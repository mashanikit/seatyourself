class RestaurantsController < ApplicationController

  def index

  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    @restaurant.owner_id = session[:user_id]

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

  def restaurant_params
    params.require(:restaurant).permit(:name, :neighbourhood, :address, :cuisine_type, :opens, :closes, :capacity)
  end
end
