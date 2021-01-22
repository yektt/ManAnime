class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(new_genre_params)

    if (Genre.find_by(new_genre_params))
      flash[:alert] = "This genre has been created already!"
      render 'new'
    elsif (@genre.save)
      flash[:notice] = "Successfully created!"
      redirect_to add_path
    else
      flash[:alert] = "Name area cannot be blank or less than two letters!"
      render 'new'
    end
  end

  private

  def new_genre_params
    params.require(:genre).permit(:name)
  end
end
