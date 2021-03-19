class ReportsController < ApplicationController
  def create
    comment = Comment.find(params[:comment_id])
    user = current_user
    user.reports << comment
    redirect_to(comment.content)
  end
  
  def destroy
  end
end
