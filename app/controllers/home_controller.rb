class HomeController < ApplicationController
  def index
    @anime = Content.anime_list.most_popular
    @manga = Content.manga_list.most_popular
  end

  def anime_list
    @all = Content.anime_list.alphabetical_order.page(params[:page])
    @popular = Content.anime_list.most_popular
    @recent = Content.anime_list.most_recent
    @unfinished_popular = Content.anime_list.unfinished.most_popular
  end
  
  def manga_list
  end
end
