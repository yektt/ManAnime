require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test 'creating a comment and assigning to content' do
    content = Content.new name:'Content', start_date:'01/02/2003', category:'anime',
                      tags:'tag1, tag2', description:'He was very little when he lost both of his parents. He decided to protect weaks after that....',
                      image:'https://pbs.twimg.com/media/EGUS_PzWwAAStTa.jpg',
                      volume_or_season_number:2, episode_or_chapter_number: 35
    content.save!

    user = User.new email:'test@mail.com', name:'Test user', password:'password'
    user.save!

    comment = Comment.new comment_body:'Comment body here', user: user, content: content
    comment.save!

    assert_equal content.comments.length, 1
    assert_equal content.comments.first, comment
    assert_equal content.comments.last, comment
  end
end
