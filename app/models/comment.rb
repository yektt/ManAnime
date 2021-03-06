class Comment < ApplicationRecord
  belongs_to :content
  belongs_to :user

  has_many :replies, dependent: :destroy
end
