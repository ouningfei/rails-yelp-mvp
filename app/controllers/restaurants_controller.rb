class RestaurantsController < ApplicationController
  
  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    # added this to link reviews to restaurants
    @reviews = @restaurant.reviews
  end

  private

  def restaurant_params
      params.require(:restaurant).permit(:name, :address, :category)
  end
end
