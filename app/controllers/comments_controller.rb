class CommentsController < ApplicationController
  def create
    @content = Content.find(params[:content_id])
    @comment = Comment.new(comment_params)
    @comment.content = @content
    @comment.user = current_user

    if @comment.save
      redirect_to @content
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:comment_body)
    end
end
