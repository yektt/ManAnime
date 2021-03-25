class VotesController < ApplicationController
  def create
    @vote = Vote.new(vote_type: params[:vote_type])
    @vote.comment = Comment.find(params[:comment_id])
    @vote.user = current_user
    
    if(@vote.save)
      redirect_to @vote.comment.content 
    end
  end
end
