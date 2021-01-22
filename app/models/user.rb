class User < ApplicationRecord 
  
  mount_uploader :avatar, AvatarUploader

  before_validation :downcase_email
  
  validates :email, presence: true, uniqueness: true
  validates :role, inclusion: {in: %w(registered admin blocked)}

  has_secure_password

  after_initialize :default_role!, :default_status!

  private

  def downcase_email 
    self.email = email.downcase
  end

  def default_role!
    self.role ||= 'registered'
  end

  def default_status!
    self.is_blocked ||= false
  end 
end
