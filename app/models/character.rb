class Character < ApplicationRecord
  validates :name, presence: true
  validates :surname, presence: true
  validates :avatar_url, presence: true
  validates :information, presence: true
end
