class CharactersController < ApplicationController
  before_action :ensure_admin, only: [:new, :create, :edit, :update]
  before_action :find_character
  
  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

    if (@character.save)
      redirect_to character_path(@character)
    else
      render 'new'
    end
  end

  def show
    @anime = []
    @manga = []
    Content.find(@character.appearances.ids).each do |content|
      if(content.category == 'anime')
        @anime << content
      else
        @manga << content
      end
    end 
  end

  def edit
  end

  def update
    if @character.update(character_params)
      redirect_to character_path(@character)
    else
      format.html { render :edit }
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :surname, :avatar_url, :information)
  end

  def find_character
    @character = Character.find(params[:id])
  end
end
