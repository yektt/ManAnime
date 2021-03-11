class ReviewsController < ApplicationController
  def create
    @content = Content.find(params[:content_id])
    @review = Review.new(review_params)

    @review.content = @content
    @review.user = current_user

    review_categories = params[:categories].first
    if (params[:categories].length == 1)
      @review.categories = review_categories
    else
      params[:categories].drop(1).each do |category|
        review_categories = review_categories + ', '
        review_categories += category
      end
      @review.categories = review_categories
    end
    
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
    params.require(:review).permit(:review_body, :rating, :categories)
  end
end
