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
    @reservation = Rerservation.new(reservation_params)

    if @reservation.save
      redirect_to
    else
      render
  end
end

  def edit
  end

  def update
  end

  def destroy
  end
end
