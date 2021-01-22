class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(new_genre_params)
    if(@genre.save)
      redirect_to add_path
    else
      render 'new'
    end
  end
end
