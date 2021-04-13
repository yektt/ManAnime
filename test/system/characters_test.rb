require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  test 'adding character - successfully' do
    user = User.new email:'admin@mail.com', role: 'admin', password:'pass', name: 'name'
    user.save!

    visit(login_path(:en))
    fill_in(:email, with: user.email)
    fill_in(:password, with: user.password)
    find(:button, 'Log in').click

    visit(new_character_path(:en))
    fill_in(:character_name, with: 'Name')
    fill_in(:character_surname, with: 'Surname')
    fill_in(:character_avatar_url, with: 'https://www.amongusavatarcreator.com/assets/img/main/icon.png')
    fill_in(:character_information, with:'+gender +male +power +archer +information about character is here')
    find('[name=commit]').click

    assert_equal current_path, character_path(:en, Character.last)
  end
end