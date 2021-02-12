class CategoriesController < ApplicationController
  def create
    @content = Content.find(params[:content_id])
    @genre = Genre.find(params[:genre_id])

    if (@content.categories.exists?(@genre.id))
      if (@content.categories.length == 1)
        flash[:alert] = 'There should be at least one genres!'
      else
        @content.categories.destroy(@genre)
      end
    else
      @content.categories << @genre
    end
    redirect_to editing_genres_path(@content)
  end
end
