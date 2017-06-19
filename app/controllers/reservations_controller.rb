class ReservationsController < ApplicationController

  def index
    @reservation = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = session[:user_id]
    @reservation.restaurant_id = params[:restaurant_id]
    @reservation.user.increment!(:loyalty_points, 5)
    if @reservation.save
      flash[:notice] = "Your reservation has been successfully created!"
      redirect_to restaurant_path(params[:restaurant_id])
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
    params.require(:reservation).permit(:size, :date, :time)
  end

end
