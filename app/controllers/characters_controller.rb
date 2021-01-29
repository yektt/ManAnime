class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

    if (@character.save)
      redirect_to show_character_path(@character)
    else
      flash[:alert] = "All areas should be filled!"
      render 'new'
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
    @character = Character.find(params[:id])
    logger.info('in edit')
    logger.info(@character.id)
  end

  def update
    @character = Character.find(params[:id])
    logger.info('in update')

    if @character.update(character_params)
      redirect_to show_character_path(@character)
    else
      format.html { render :edit }
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :surname, :avatar_url, :information)
  end
end
