require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'email is lowercase before validation' do
    user = User.new email:'TeSt@MaIl.cOm', password:'password', name:'Test user'
    user.save!
    
    assert_equal user.email, 'test@mail.com'
  end

  test 'User cannot be exist without password' do
    user = User.new email:'test@mail.com', name:'Test user'
    
    refute user.valid?
  end
  
  test 'User cannot be exist without name' do
    user = User.new email:'test@mail.com', password:'password'
    
    refute user.valid?
  end

  test 'Role is assinging automatically' do
    user = User.new email:'test@mail.com', password:'password', name:'Test user'
    user.save!
    
    assert_equal user.role, 'registered'
  end
end
