require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test 'creating review with rating' do
    content = Content.new name:'Content', start_date:'01/02/2003', category:'anime',
                      tags:'tag1, tag2', description:'He was very little when he lost both of his parents. He decided to protect weaks after that....',
                      image:'https://pbs.twimg.com/media/EGUS_PzWwAAStTa.jpg',
                      volume_or_season_number:2, episode_or_chapter_number: 35
    content.save!

    user = User.new email:'test@mail.com', name:'Test user', password:'password'
    user.save!

    assert_equal content.reviews.length, 0
    assert content.reviews.first.nil?

    review = Review.new review_body:'Review body here', rating: 8, 
                        categories:'General', user: user, content: content
    review.save!

    assert_equal content.reviews.reload.length, 1
    assert_equal content.reviews.first.rating, 8
  end

  test 'creating review without categories' do
    content = Content.new name:'Content', start_date:'01/02/2003', category:'anime',
                      tags:'tag1, tag2', description:'He was very little when he lost both of his parents. He decided to protect weaks after that....',
                      image:'https://pbs.twimg.com/media/EGUS_PzWwAAStTa.jpg',
                      volume_or_season_number:2, episode_or_chapter_number: 35
    content.save!

    user = User.new email:'test@mail.com', name:'Test user', password:'password'
    user.save!

    review = Review.new review_body:'Review body here', rating: 8, user: user, content: content
    refute review.valid?
  end
end
