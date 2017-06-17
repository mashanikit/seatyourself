class ReservationsController < ApplicationController

  def index
    @reservation = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.new(reservation_params)
    # @reservation = Reservation.new(reservation_params)

    if @reservation.save
      @reservation.user_id = session[:user_id]
      flash[:notice] = "Your reservation has been successfully created!"
      render :show
      # redirect_to restaurants_path
    else
      render :new
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      flash[:notice] = "Your reservation has been successfully updated!"
      redirect_to @reservation
    else
      render :edit
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    flash[:notice] = "Your reservation has been successfully cancelled!"
    redirect_to reservations_path
  end

  def reservation_params
    params.require(:reservation).permit(:user_id, :restaurant_id, :size, :date, :time)
  end

end
