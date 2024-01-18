class Api::V1::ReviewsController < ApplicationController
  #before_action :set_review, only: %i[show destroy]

  def index
    review = Review.all.order(review_date: :desc)
    render json: review
  end

  def create
    review = Review.create(review_params)
    if review.save
      render json: review
    else
      render json: review.errors
    end
  end

  def show
    review = Review.find(params[:id])
    render json: review
  end

  def destroy
    @review&.destroy
    render json: { message: 'Review deleted!' }
  end

  private
    def review_params
      params.permit(:restaurant_name, :review_date, :review_body, :tenderloin_rating, :sides_rating, :menu_rating, :price_rating, :decor_rating, :service_rating, :total_rating, :image)
    end
    
    def set_review
      @review = Review.find(params[:id])
    end
end
