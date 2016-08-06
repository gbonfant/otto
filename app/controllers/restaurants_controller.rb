class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    RestaurantCreation.new(permitted_params).call

    redirect_to restaurants_path
  end

  private

  def permitted_params
    params.require(:restaurant).permit(:name, :description)
  end
end
