class FavoritesController < ApplicationController
  def create
    user = current_user
    content = Content.find(params[:content_id])
    user.favorites << content
    redirect_to(content)
  end 
end
