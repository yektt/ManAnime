class Reply < ApplicationRecord
  validates :reply_body, presence: true, length: { minimum: 5 }

  belongs_to :comment
  belongs_to :user
end
