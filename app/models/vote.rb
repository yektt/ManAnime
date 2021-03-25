class Vote < ApplicationRecord
  belongs_to :comment
  belongs_to :user

  scope :upvotes, -> { where(vote_type: 'up') }
  scope :downvotes, -> { where(vote_type: 'down') }
end
