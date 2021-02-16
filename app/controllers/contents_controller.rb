class ContentsController < ApplicationController
  def show
    @content = Content.find(params[:id])
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new (content_params)
    if (@content.save)
      redirect_to editing_genres_path(@content)
    else
      render :new
    end
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])

    if @content.update(content_params)
      redirect_to @content
    else
      render :edit
    end
  end

  def editing_genres
    @content = Content.find(params[:id])
  end

  private

  def content_params
    params.require(:content).permit(:name, :category, :start_date, :end_date, :tags, :link_to_watch_or_read, :description, :image, :volume_or_season_number, :episode_or_chapter_number, genres_id: [])
  end  
end
