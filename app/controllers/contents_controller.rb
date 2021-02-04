class ContentsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @content = Content.new (new_content_params)
    @content.save!
  end

  def edit
  end

  def update
  end

  def anime
    @content = Content.new
  end

  def manga
    @content = Content.new
  end

  private

  def new_content_params
    params.require(:content).permit(:name, :category, :start_date, :end_date, :tags, :link_to_watch, :description, :image, :volume_or_season_number, :episode_or_chapter_number)
  end  
end
