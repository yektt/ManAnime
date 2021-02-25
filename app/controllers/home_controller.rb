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
    @all = Content.manga_list.alphabetical_order.page(params[:page])
    @popular = Content.manga_list.most_popular
    @recent = Content.manga_list.most_recent
    @unfinished_popular = Content.manga_list.unfinished.most_popular
  end

  def search
    @search_term = params[:q]
    @animes = Content.anime_list.where('name LIKE ?', "%#{@search_term}%").alphabetical_order
    @mangas = Content.manga_list.where('name LIKE ?', "%#{@search_term}%").alphabetical_order
    @years = []
    for content in Content.year
      year = content.start_date.year.to_i - (content.start_date.year.to_i % 5)
      unless(@years.include?(year))
        @years << year
      end
    end

    if(params[:season])
      @animes = []
      @mangas = []
      case params[:season]
      when 'autumn'
        
      when 'spring'

      when 'summer'

      else

      end
    end
  end
end
