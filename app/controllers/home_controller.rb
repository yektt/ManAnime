class HomeController < ApplicationController
  def index
    @anime = Content.anime_list.most_popular
    @manga = Content.manga_list.most_popular
  end

  def anime_list
  end
  
  def manga_list
  end
end
