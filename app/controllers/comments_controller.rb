class CommentsController < ApplicationController
  def create
  end

  private
    def comment_params
      params.require(:comment).permit(:comment_body)
    end
end
