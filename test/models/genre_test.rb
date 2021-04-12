require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  test 'adding genre' do
    genre = Genre.new name:'genre'
    genre.save!

    assert_equal genre, Genre.last
  end

  test 'adding existing genre' do
    genre = Genre.new name:'genre'
    genre.save!

    new_genre = Genre.new name:'genre'
    refute new_genre.valid?
  end
end
