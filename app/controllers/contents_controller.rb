class ContentsController < ApplicationController
  before_action :ensure_admin,  only: [:new, :create, :edit, :update]
  before_action :find_content,  only: [:edit, :update]

  helper_method :did_user_voted_this_comment
  
  def show
    @content = Content.find(params[:id])

    if(session[:user_id].present?)
      @disable_add_favorite = current_user.favorites.exists?(@content.id)
      @upvotes = current_user.votes.upvotes
      @downvotes = current_user.votes.downvotes
    end 
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new (content_params)

    if (@content.save && params[:genres_id] && params[:character_id])
      @content.categories << Genre.find(params[:genres_id])
      @content.characters << Character.find(params[:character_id])
      redirect_to @content
    else
      if (!params[:genres_id])
        @content.errors.add(:'genres', "can't be blank!")
      end
      if (!params[:character_id])
        @content.errors.add(:'characters', "can't be blank!")
      end
      render :new
    end
  end

  def edit
  end

  def update
    if (@content.update(content_params) && params[:genres_id] && params[:character_id])
      params[:genres_id].each do |params_genre|
        if (!@content.categories.exists?(Genre.find(params_genre).id))
          @content.categories << Genre.find(params_genre)
        end
      end

      params[:character_id].each do |params_character|
        if (!@content.characters.exists?(Character.find(params_character).id))
          @content.characters << Character.find(params_character)
        end
      end
  
      if ((@content.categories - Genre.find(params[:genres_id])))
        removed_genre_array = (@content.categories - Genre.find(params[:genres_id]))
        removed_genre_array.each do |removed_genre|
          if (@content.categories.length != 1)
            @content.categories.destroy(removed_genre)
          end
        end
      end

      if ((@content.characters - Character.find(params[:character_id])))
        removed_character_array = (@content.characters - Character.find(params[:character_id]))
        removed_character_array.each do |removed_character|
          if (@content.characters.length != 1)
            @content.characters.destroy(removed_character)
          end
        end
      end

      redirect_to @content
    else
      if (!params[:genres_id])
        @content.errors.add(:'genres', "can't be blank!")
      end
      if (!params[:charachter_id])
        @content.errors.add(:'characters', "can't be blank!")
      end
      render :edit
    end
  end

  private

  def did_user_voted_this_comment(comment)
    current_user.votes.each do |vote| 
      if (vote.comment == comment)
        return vote
      end
    end
    return false
  end

  def content_params
    params.require(:content).permit(:name, :category, :start_date, :end_date, :tags, :link_to_watch_or_read, :description, :image, :volume_or_season_number, :episode_or_chapter_number, genres_id:[], charachter_id:[])
  end

  def find_content
    @content = Content.find(params[:id])
  end
end
