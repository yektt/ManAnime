class CommentsController < ApplicationController
  before_action :comment_find, only: [:destroy, :update]

  def create
    @content = Content.find(params[:content_id])
    @comment = Comment.new(comment_params)
    @comment.content = @content
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        #format.html { redirect_to @content }
        format.js 
      else 
        format.html { redirect_to @content }
      end
    end
  end

  def update
    @comment.update(comment_params)

    respond_to do |format|
      if @comment.save
        #format.html { redirect_to @comment.content }
        format.js 
      else 
        format.html { redirect_to @comment.content }
      end
    end
  end

  def destroy
    @content = @comment.content
    @comment.destroy!

    respond_to do |format|
      format.js
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:comment_body)
    end

    def comment_find
      @comment = Comment.find(params[:id])
    end
end
