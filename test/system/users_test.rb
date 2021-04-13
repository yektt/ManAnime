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

  test 'logging in' do
    visit(signup_path(:en))
    fill_in(:user_email, with: 'test@mail.com')
    fill_in(:user_password, with: 'password')
    find(:button, 'Sign up').click

    click_on('Log out', match: :first)

    visit(login_path(:en))
    fill_in(:email, with: 'test@mail.com')
    fill_in(:password, with: 'password')
    find(:button, 'Log in').click
  end

  test 'contact' do
    visit(contact_path(:en))

    fill_in(:contact_email, with: 'manganimeteam@gmail.com')
    fill_in(:contact_name, with: 'name')
    fill_in(:contact_topic, with: 'topic')
    fill_in(:contact_message, with: 'message here')

    find('[name=commit]').click
    assert_equal root_path, current_path
  end

  test 'anime list page' do
    visit(anime_list_path(:en))

    assert page.has_content?('Most popular')
    assert page.has_content?('Most recent')
    assert page.has_content?('Most popular & not completed')
    assert page.has_content?('All Animes')
  end

  test 'manga list page' do
    visit(manga_list_path(:en))

    assert page.has_content?('Most popular')
    assert page.has_content?('Most recent')
    assert page.has_content?('Most popular & not completed')
    assert page.has_content?('All Mangas')
  end
end
