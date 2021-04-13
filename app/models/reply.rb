class Reply < ApplicationRecord
  validates :reply_body, presence: true

  belongs_to :comment
  belongs_to :user
end
