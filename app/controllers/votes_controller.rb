class VotesController < ApplicationController
  def create
    @vote = Vote.new(vote_type: params[:vote_type])
    @vote.comment_id = params[:comment_id]
    
    if(@vote.save)
      @comment = Comment.find(params[:comment_id])
      @comment.votes << @vote
    end
  end
end
