class HomeController < ApplicationController
  def index
    @anime = Content.most_recent_anime
    @manga = Content.most_recent_manga
  end
end
