class Skill < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :name, length: {
    maximum: 100, message:
    "must not exceed 100 characters"
  }
end
