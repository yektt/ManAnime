require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test 'creating an upvote for a comment' do
    content = Content.new name:'Content', start_date:'01/02/2003', category:'anime',
                      tags:'tag1, tag2', description:'He was very little when he lost both of his parents. He decided to protect weaks after that....',
                      image:'https://pbs.twimg.com/media/EGUS_PzWwAAStTa.jpg',
                      volume_or_season_number:2, episode_or_chapter_number: 35
    content.save!

    user1 = User.new email:'test1@mail.com', name:'Test user', password:'password'
    user1.save!

    comment = Comment.new comment_body:'Comment body here', user: user1, content: content
    comment.save!

    user2 = User.new email:'test2@mail.com', name:'Test user', password:'password'
    user2.save!

    vote = Vote.new vote_type:'up', comment: comment, user: user2
    vote.save!

    assert_equal comment.votes.length, 1
  end
end
