class Education < ApplicationRecord
  belongs_to :user

  validates :school_name, presence: true
  validates :school_name, length: {
    maximum: 100, message:
    "must not exceed 100 characters"
  }

  validates :field_of_study, length: {
    maximum: 60, message:
    "must not exceed 60 characters"
  }

  validates :degree, length: {
    maximum: 60, message:
    "must not exceed 60 characters"
  }
end
