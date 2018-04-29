class Education < ApplicationRecord
  belongs_to :user

  validates :school_name, presence: true
  validates :field_of_study, presence: true
  validates :degree, presence: true
  validates :start_date, presence: true
  # For :end_date, it depends if :is_current
end
