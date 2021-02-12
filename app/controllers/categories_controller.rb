class CategoriesController < ApplicationController
  def create
    @content = Content.find(params[:content_id])
    @genre = Genre.find(params[:genre_id])

    if (@content.categories.exists?(@genre.id))
      @content.categories.destroy(@genre)
    else
      @content.categories << @genre
    end
    redirect_to editing_genres_path(@content)
  end
end
