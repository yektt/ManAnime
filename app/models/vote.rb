class Vote < ApplicationRecord
  belongs_to :comment
  has_and_belongs_to_many :users
end
