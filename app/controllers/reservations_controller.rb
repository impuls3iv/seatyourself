class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservations = Reservation.new
  end

  def create
    @reservations = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservation_url(@reservation)
    else
      render :new
    end
  end

  def show
    @reservations = Reservation.find(params[:id])
  end

  def edit
    @reservations = Reservation.find(params[:id])
  end

  def update
    @reservations = Reservation.find(params[:id])
    if @reservation.update_attributes(reservation_params)
      redirect_to reservation_url(@reservation)
    else
      render :edit
    end
  end

  def destroy
    @reservations = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_url
  end

  private
  def reservation_params
    params.require(:reservation).permit(:time, :people, :user_id, :restaurant_id, :availability)
  end

end
