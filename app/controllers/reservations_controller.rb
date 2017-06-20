class ReservationsController < ApplicationController

  before_action :restaurant?, only: [:new, :create, :edit, :update]
  before_action :reservation?, only: [:show, :edit, :update, :destroy]

  def index
    @reservation = Reservation.all
  end

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = session[:user_id]
    @reservation.restaurant = @restaurant

    # if @reservation.reso_date_not_in_past && reso_time_is_during_open_hours
    if @reservation.save
      @reservation.user.increment!(:loyalty_points, 5)
      flash[:notice] = "Your reservation has been successfully created!"
      redirect_to restaurant_path(params[:restaurant_id])
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @reservation.update(reservation_params)
      flash[:notice] = "Your reservation has been successfully updated!"
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @reservation.destroy
    flash[:notice] = "Your reservation has been successfully cancelled!"
    redirect_to users_path
  end

  def reservation_params
    params.require(:reservation).permit(:size, :date, :time)
  end
  def restaurant?
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  def reservation?
    @reservation = Reservation.find(params[:id])
  end
end
