class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new
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
    @restaurant = Restaurant.find(params[:id])

    if current_user.id == @restaurant.owner_id
      render :edit
    else
      flash[:alert] = 'You are not authorized to edit this restaurant mf'
      redirect_to root_path
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurant_url(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :neighbourhood, :address, :cuisine_type, :opens, :closes, :capacity, :image, :menu, :description, :price_range)
  end



end
