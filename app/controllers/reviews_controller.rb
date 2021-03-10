class ReviewsController < ApplicationController
  def create
    logger.info('in reviews create')
    @content = Content.find(params[:content_id])
    @review = Review.new(review_params)
    @review.content = @content
    @review.user = current_user

    if @review.save
      redirect_to @content 
    end
  end

  def destroy
    logger.info('in reviews destroy')
    @review = Review.find(params[:id])
    @content = @review.content

    @review.destroy!

    redirect_to @content 
  end

  private
  def review_params
    params.require(:review).permit(:review_body, :rating)
  end
end
