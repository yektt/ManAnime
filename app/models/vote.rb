class Vote < ApplicationRecord
  belongs_to :comment
  has_and_belongs_to_many :users

  scope :upvotes, -> { where(vote_type: 'up') }
  scope :downvotes, -> { where(vote_type: 'down') }
end
