class Comment < ApplicationRecord
  belongs_to :content
  belongs_to :user

  has_many :replies, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_and_belongs_to_many :users, dependent: :destroy

  validates :comment_body, presence: true
end
