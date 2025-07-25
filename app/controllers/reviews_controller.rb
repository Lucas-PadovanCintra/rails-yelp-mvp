class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[ new create ]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
  @review.restaurant = @restaurant
  if @review.save
    redirect_to restaurant_path(@restaurant)
  else
    render :new, status: :unprocessable_entity
  end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
