class ReservationsController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy]

  def index
    @reservations = Reservation.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    u = Restaurant.find(params[:restaurant_id])
    @reservation.restaurant = u
    @reservation.user = current_user
    #puts @reservation.restaurant_id
    if @reservation.save
      redirect_to root_url(@reservation)
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
    params.require(:reservation).permit(:time, :people, :availability)
  end

end
