class ReportsController < ApplicationController
  def create
    comment = Comment.find(params[:comment_id])
    user = current_user
    user.reports << comment
    redirect_to(comment.content)
  end
  
  def destroy
    user = User.find(params[:user_id])
    comment = Comment.find(params[:id])

    user.reports.delete(comment)
    redirect_to(reports_path)
  end
end
