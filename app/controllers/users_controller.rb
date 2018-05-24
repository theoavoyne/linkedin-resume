class UsersController < ApplicationController

  def update
    authorize User.find(params[:id])
    if current_user.update(user_params)
      respond_to do |format|
        format.html { redirect_to editor_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render '/editor' }
        format.js
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:template, :first_name, :last_name, :headline, :location_name, :email)
  end
end
