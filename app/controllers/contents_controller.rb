class ContentsController < ApplicationController
  def show
    @content = Content.find(params[:id])
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new (new_content_params)
    if (@content.save)
      redirect_to @content
    else
      render 'create'
    end
  end

  def edit
  end

  def update
  end

  private

  def new_content_params
    params.require(:content).permit(:name, :category, :start_date, :end_date, :tags, :link_to_watch_or_read, :description, :image, :volume_or_season_number, :episode_or_chapter_number)
  end  
end
