class CharactersController < ApplicationController
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
    @character = Character.find(params[:id])
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
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
end
