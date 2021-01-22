class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def create
    @character = Character.new(new_character_params)

    if (@character.save)
      flash[:notice] = "Successfully created!"
      redirect_to add_path
    else
      flash[:alert] = "All areas should be filled!"
      render 'new'
    end
  end

  private

  def new_character_params
    params.require(:character).permit(:name, :surname, :avatar_url, :information)
  end
end
