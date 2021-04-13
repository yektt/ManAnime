require "application_system_test_case"

class ContentsTest < ApplicationSystemTestCase

  test 'adding manga - succesfully' do
    user = User.new email:'admin@mail.com', role: 'admin', password:'pass', name: 'name'
    user.save!

    visit(login_path(:en))
    fill_in(:email, with: user.email)
    fill_in(:password, with: user.password)
    find(:button, 'Log in').click

    visit(new_content_path(:en, title:'manga'))
    fill_in(:content_name, with: 'manga name')
    fill_in(:content_start_date, with: '20/01/2016')
    fill_in(:content_tags, with:'tag1, tag2')
    fill_in(:content_description, with:'descriptin of the content')
    fill_in(:content_image, with:'https://www.fortressofsolitude.co.za/wp-content/uploads/2019/05/The-15-Most-Powerful-Anime-Characters-Of-All-Time-scaled.jpg')
    fill_in(:content_volume_or_season_number, with:'34')
    fill_in(:content_episode_or_chapter_number, with:'2')

    find(:css, "#genres_id_[value='2']").set(true)
    find(:css, "#genres_id_[value='7']").set(true)

    find(:css, "#character_id_[value='5']").set(true)
    find(:css, "#character_id_[value='13']").set(true)

    find('[name=commit]').click

    assert_equal current_path, content_path(:en, Content.last)
  end
end
