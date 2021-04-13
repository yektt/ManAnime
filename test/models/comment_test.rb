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

  test 'creating a comment without body' do
    content = Content.new name:'Content', start_date:'01/02/2003', category:'anime',
                          tags:'tag1, tag2', description:'He was very little when he lost both of his parents. He decided to protect weaks after that....',
                          image:'https://pbs.twimg.com/media/EGUS_PzWwAAStTa.jpg',
                          volume_or_season_number:2, episode_or_chapter_number: 35
    content.save!

    user = User.new email:'test@mail.com', name:'Test user', password:'password'
    user.save!

    comment = Comment.new user: user, content: content
    refute comment.valid?
  end

  test 'creating more than one comment and assinging to a content' do
    content = Content.new name:'Content', start_date:'01/02/2003', category:'anime',
                      tags:'tag1, tag2', description:'He was very little when he lost both of his parents. He decided to protect weaks after that....',
                      image:'https://pbs.twimg.com/media/EGUS_PzWwAAStTa.jpg',
                      volume_or_season_number:2, episode_or_chapter_number: 35
    content.save!

    user1 = User.new email:'test1@mail.com', name:'Test user1', password:'password'
    user1.save!

    user2 = User.new email:'test2@mail.com', name:'Test user2', password:'password'
    user2.save!

    comment1 = Comment.new comment_body:'Comment body here', user: user1, content: content
    comment1.save!

    comment2 = Comment.new comment_body:'Comment body here', user: user2, content: content
    comment2.save!

    comment3 = Comment.new comment_body:'Comment body here', user: user1, content: content
    comment3.save!

    assert_equal content.comments.length, 3
    assert_equal content.comments.first, comment1
    assert_equal content.comments.last, comment3
  end

  test 'editing an existing comment' do
    content = Content.new name:'Content', start_date:'01/02/2003', category:'anime',
                      tags:'tag1, tag2', description:'He was very little when he lost both of his parents. He decided to protect weaks after that....',
                      image:'https://pbs.twimg.com/media/EGUS_PzWwAAStTa.jpg',
                      volume_or_season_number:2, episode_or_chapter_number: 35
    content.save!

    user = User.new email:'test@mail.com', name:'Test user', password:'password'
    user.save!

    comment = Comment.new comment_body:'Comment body here', user: user, content: content
    comment.save!

    assert_equal comment.comment_body, 'Comment body here'

    comment.update(comment_body:'Comment body there')
    assert_equal comment.comment_body, 'Comment body there'
    refute_equal comment.comment_body, 'Comment body here'
  end

  test 'deleting a comment' do
    content = Content.new name:'Content', start_date:'01/02/2003', category:'anime',
                      tags:'tag1, tag2', description:'He was very little when he lost both of his parents. He decided to protect weaks after that....',
                      image:'https://pbs.twimg.com/media/EGUS_PzWwAAStTa.jpg',
                      volume_or_season_number:2, episode_or_chapter_number: 35
    content.save!

    user1 = User.new email:'test1@mail.com', name:'Test user1', password:'password'
    user1.save!

    user2 = User.new email:'test2@mail.com', name:'Test user2', password:'password'
    user2.save!

    comment1 = Comment.new comment_body:'Comment body here', user: user1, content: content
    comment1.save!

    comment2 = Comment.new comment_body:'Comment body here', user: user2, content: content
    comment2.save!

    comment3 = Comment.new comment_body:'Comment body here', user: user1, content: content
    comment3.save!

    assert_equal content.comments.length, 3

    comment1.destroy!

    assert_equal content.reload.comments.length, 2
  end
end
