class ReportsController < ApplicationController
  def create
    user = current_user
    comment = Comment.find(params[:comment_id])
    user.reports << comment
    redirect_to(comment.content)
  end
  
  def destroy
    user = User.find(params[:user_id])
    user.reports.delete(Comment.find(params[:id]))
    redirect_to(reports_path)
  end
end
