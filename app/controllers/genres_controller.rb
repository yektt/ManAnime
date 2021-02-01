class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(new_genre_params)
  
    if (@genre.save)
      flash[:notice] = "Successfully created!"
      redirect_to add_path
    else
      render 'new'
    end
  end

  private

  def new_genre_params
    params.require(:genre).permit(:name)
  end
end
