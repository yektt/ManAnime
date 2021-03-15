class Review < ApplicationRecord
  belongs_to :content
  belongs_to :user

  validates :review_body, presence: true
  validates :categories, presence: true
end
