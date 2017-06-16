class RestaurantsController < ApplicationController

  def index
    @Restaurants = Restaurant.all
  end

  def show
    @Restaurant = Restaurant.find(params[:id])
  end

  def new
    @Restaurant = Restaurant.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end
end
