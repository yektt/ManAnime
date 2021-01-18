class User < ApplicationRecord  
  validates :email, presence: true, uniqueness: true
  validates :role, inclusion: {in: %w(registered admin blocked)}

  has_secure_password

  private

  def default_role!
    self.role ||= 'registered'
  end
end
