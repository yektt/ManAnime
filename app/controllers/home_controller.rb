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
        @animes = seasonCalculator(9, 23, 12, 20, Content.anime_list)
        @mangas = seasonCalculator(9, 23, 12, 20, Content.manga_list)
      when 'spring'
        @animes = seasonCalculator(3, 21, 6, 20, Content.anime_list)
        @mangas = seasonCalculator(3, 21, 6, 20, Content.manga_list)
      when 'summer'
        @animes = seasonCalculator(6, 21, 9, 22, Content.anime_list)
        @mangas = seasonCalculator(6, 21, 9, 22, Content.manga_list)
      else
        @animes = seasonCalculator(12, 21, 12, 31, Content.anime_list) + seasonCalculator(1, 1, 3, 20, Content.anime_list)
        @mangas = seasonCalculator(12, 21, 12, 31, Content.manga_list) + seasonCalculator(1, 1, 3, 20, Content.manga_list)
      end
    end

    if(params[:year] && params[:genres_id].nil?)
      @animes = [] 
      @mangas = [] 
      for content in Content.anime_list
        if (content.start_date.year >= params[:year].to_i)
          @animes << content
        end
      end
      for content in Content.manga_list
        if (content.start_date.year >= params[:year].to_i)
          @mangas << content
        end
      end

    elsif(params[:genres_id] && params[:year].nil?)
      @animes = Content.anime_list
      @mangas = Content.manga_list
      for genre in Genre.find(params[:genres_id])
        @animes = genreSearch(genre, @animes)
      end
      for genre in Genre.find(params[:genres_id])
        @mangas = genreSearch(genre, @mangas)
      end
    elsif (params[:year] && params[:genres_id])
      
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

  def genreSearch(genre, records)
    @result_genre = []
    for content in records
      if content.categories.include?(genre)
        @result_genre << content
      end
    end
    return @result_genre 
  end

  def yearCalculator (start_year ,records)
    @result_year = []
    for content in records
      if (content.start_date.year >= start_year)
        @result_year << content
      end
    end
    return @result_year 
  end
end
