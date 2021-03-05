class RepliesController < ApplicationController
  def create
    @content = Content.find(params[:content_id])
    @comment = Comment.find(params[:comment_id])
    @reply = Reply.new(reply_params)

    @reply.user = current_user
    @reply.comment = @comment

    if @reply.save
      redirect_to @content 
    end
  end

  private

  def reply_params
    params.require(:reply).permit(:reply_body)
  end
end
