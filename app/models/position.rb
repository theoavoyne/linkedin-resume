class Position < ApplicationRecord
  belongs_to :user

  validates :company_name, presence: true
  validates :summary, presence: true

  validates :summary, length: {
    maximum: 2000, message:
    "should be less than 2000 characters"
    # Linkedin validation
  }

  validates :start_date, presence: true
  # For :end_date, it depends if :is_current

  validates :title, presence: true
end
