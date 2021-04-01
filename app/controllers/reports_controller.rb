class ReportsController < ApplicationController
  before_action :find_comment
  def create
    user = current_user
    user.reports << comment
    redirect_to(comment.content)
  end
  
  def destroy
    user = User.find(params[:user_id])

    user.reports.delete(comment)
    redirect_to(reports_path)
  end

  private

  def find_comment
    comment = Comment.find(params[:id])
  end
end
