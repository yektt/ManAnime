class Genre < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }

  has_and_belongs_to_many :contents

  before_validation :downcase_name
  
  private

  def downcase_name
    self.name = name.downcase
  end
end
