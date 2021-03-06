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

  def destroy
    @reply = Reply.find(params[:id])
    @content = @reply.comment.content

    @reply.destroy!

    respond_to do |format|
      format.js
    end
  end

  private

  def reply_params
    params.require(:reply).permit(:reply_body)
  end
end
