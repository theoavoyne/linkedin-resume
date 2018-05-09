class User < ApplicationRecord

  has_many :educations, dependent: :destroy
  has_many :positions, dependent: :destroy
  has_many :skills, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:linkedin]

  def self.find_for_linkedin_oauth(auth)
    user_params = auth.to_h.slice("provider", "uid")
    user_params.merge! auth.info.slice(:first_name, :last_name, :headline, :email)
    user_params[:location_name] = auth.extra.raw_info.location.name
    user_params[:location_country] = auth.extra.raw_info.to_h["location"]["country"].first[1]
    user_params[:linkedin_profile_url] = auth.info.urls.public_profile
    user_params[:linkedin_picture_url] = auth.info.image

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first

    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0, 20]
      user.save
    end

    return user
  end

end
