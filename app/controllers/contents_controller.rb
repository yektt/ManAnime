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
    params.require(:content).permit(:name, :category)
  end  
end
