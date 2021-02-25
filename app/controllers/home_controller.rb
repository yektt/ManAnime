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
        for content in Content.anime_list
          if(content.start_date.month == 9 && content.start_date.day >= 23)
            @animes << content 
          elsif(content.start_date.month > 9 && content.start_date.month <  12)
            @animes << content
          elsif(content.start_date.month == 12 && content.start_date.day <= 20)
            @animes << content
          end
        end
        for content in Content.manga_list
          if(content.start_date.month == 9 && content.start_date.day >= 23)
            @mangas << content 
          elsif(content.start_date.month > 9 && content.start_date.month <  12)
            @mangas << content
          elsif(content.start_date.month == 12 && content.start_date.day <= 20)
            @mangas << content
          end
        end
      when 'spring'

      when 'summer'

      else

      end
    end
  end

  private 

  def seasonCalculator (start_month, start_day, end_month, end_day, records)
    @result = []  
    for content in records
      if(content.start_date.month == start_month && content.start_date.day >= start_day)
        @result << content 
      elsif(content.start_date.month > start_month && content.start_date.month <  end_month)
        @result << content
      elsif(content.start_date.month == end_month && content.start_date.day <= end_day)
        @result << content
      end
    end
    return @result
  end

end
