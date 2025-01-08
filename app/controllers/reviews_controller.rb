class ReviewsController < ApplicationController

  def index
  @review = Reviews.all
  end

  def show
      @review = Review.find(params[:id])
    end

  def new
      @review = Review.new
    end

    def create
        @restaurant = Review.new(review_params)
        if @restaurant.save
          redirect_to restaurant_path(@restaurant)
        else
          render :new
    end
end
