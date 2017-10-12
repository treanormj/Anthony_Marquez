class Reflection < ApplicationRecord
  # belongs_to :question
  validates :name, presence: true, length: { minimum: 4 }
  validates :relationship, presence: true, length: { minimum: 4 }
end
