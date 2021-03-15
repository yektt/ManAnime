class ReviewsController < ApplicationController
  def create
    @content = Content.find(params[:content_id])
    @review = Review.new(review_params)

    @review.content = @content
    @review.user = current_user

    if (params[:categories])
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
    end
    
    if @review.save
      if (review_params[:rating])
        @content.rating = ((@content.rating_number * @content.rating + @review.rating) / (@content.rating_number + 1)).to_d
        @content.rating_number += 1
        @content.save!
      end
      redirect_to @content
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @content = @review.content

    if !@review.rating.nil?
      @content.rating = ((@content.rating*@content.rating_number - @review.rating) / (@content.rating_number - 1)).to_d
      @content.rating_number = @content.rating_number - 1
      @content.save!
    end

    respond_to do |format|
      if @review.destroy
        #format.html { redirect_to @comment.content }
        format.js 
      else 
        format.html { redirect_to @content }
      end
    end
  end

  private
  def review_params
    params.require(:review).permit(:review_body, :rating, :categories)
  end
end
