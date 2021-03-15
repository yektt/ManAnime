class Comment < ApplicationRecord
  belongs_to :content
  belongs_to :user

  has_many :replies, dependent: :destroy

  validates :comment_body, presence: true
end
