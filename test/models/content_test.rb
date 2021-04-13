require 'test_helper'

class ContentTest < ActiveSupport::TestCase
  test 'adding a content to a user fav list' do
    content = Content.new name:'Content', start_date:'01/02/2003', category:'anime',
                      tags:'tag1, tag2', description:'He was very little when he lost both of his parents. He decided to protect weaks after that....',
                      image:'https://pbs.twimg.com/media/EGUS_PzWwAAStTa.jpg',
                      volume_or_season_number:2, episode_or_chapter_number: 35
    content.save!

    user = User.new email:'test@mail.com', name:'Test user', password:'password'
    user.save!

    assert_equal user.favorites.length, 0

    user.favorites << content

    assert_equal user.favorites.reload.length, 1
  end
end
