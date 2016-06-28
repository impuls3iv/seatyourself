class ReservationsController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy]

  def index
    @reservations = Reservation.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new
<<<<<<< HEAD
=======
    @search = Search.last
>>>>>>> 3a1e8ce43b6b07b9c6b6d40a4c0f379bd1d194b8
  end

  def create
    @reservation = Reservation.new(reservation_params)
    u = Restaurant.find(params[:restaurant_id])
    @reservation.restaurant = u
    @reservation.user = current_user
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.capacity -= @reservation.people
    @restaurant.save
    if @reservation.save

      restaurant_capacity = @restaurant.capacity
      restaurant_id = @restaurant.id

      # Reservation.reduce_capacity_when_reserved(restaurant_capacity, restaurant_id)

      redirect_to restaurant_path(@restaurant)

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
<<<<<<< HEAD
    params.require(:reservation).permit(:time, :people, :availability)
=======
    params.require(:reservation).permit(:time, :people, :hour)
>>>>>>> 3a1e8ce43b6b07b9c6b6d40a4c0f379bd1d194b8
  end

end
