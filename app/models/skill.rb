class Skill < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :name, length: {
    maximum: 40, message:
    "must not exceed 40 characters"
  }
end
