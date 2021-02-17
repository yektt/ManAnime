class Character < ApplicationRecord
  validates :name, presence: true
  validates :avatar_url, presence: true
  validates :information, presence: true

  has_and_belongs_to_many :appearances, class_name:'Content'
end
