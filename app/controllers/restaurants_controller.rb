class RestaurantsController < ApplicationController

  def index

  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new

    @restaurant.name = params[:restaurant][:name]
    @restaurant.neighbourhood = params[:restaurant][:neighbourhood]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.opens = params[:restaurant][:opens]
    @restaurant.closes = params[:restaurant][:closes]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.cuisine_type = params[:restaurant][:cuisine_type]

    if @restaurant.save
      flash[:notice] = 'Restaurant was added!'
      redirect_to root_url
    else
      # flash.now works on the same request
      flash.now[:error] = 'Sorry, something went wrong!'
      render :new
    end
  end



  def edit
  end

  def update
  end

  def destroy
  end
end
