class User < ApplicationRecord 
  
  mount_uploader :avatar, AvatarUploader

  before_validation :downcase_email
  
  validates :email, presence: true, uniqueness: true, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i } 
  validates :name, presence: true, length: { minimum: 3 }
  validates :role, inclusion: {in: %w(registered admin blocked)}

  has_secure_password

  has_many :comments
  has_many :reviews
  has_many :replies
  has_and_belongs_to_many :favorites, class_name: 'Content'

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
