class Position < ApplicationRecord
  belongs_to :user

  validates :summary, length: {
    maximum: 2000, message:
    "must not exceed 2000 characters"
    # Linkedin validation
  }

  validates :start_date, presence: true
  validates :end_date, presence: true, unless: :is_current

  validates :is_current, inclusion: { in: [true, false] }

  validates :title, presence: true
  validates :title, length: {
    maximum: 60, message:
    "must not exceed 60 characters"
  }

  validates :company_name, presence: true
  validates :company_name, length: {
    maximum: 60, message:
    "must not exceed 60 characters"
  }
end
