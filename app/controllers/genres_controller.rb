class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end
end
