require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test 'singing up' do
    visit(signup_path(:en))
    fill_in(:user_email, with: 'test@mail.com')
    fill_in(:user_password, with: 'password')
    find(:button, 'Sign up').click

    user = User.last
    assert_equal current_path, edit_account_path(:en, user)
  end
end
