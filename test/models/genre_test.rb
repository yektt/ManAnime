require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  test 'adding genre' do
    genre = Genre.new name:'genre'
    genre.save!

    assert_equal genre, Genre.last
  end
end
