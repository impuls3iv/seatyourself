class RestaurantsController < ApplicationController
  # before_action :require_login

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_url
    else
      render :new
    end
  end

  def delete
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurant_url
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurant_urls
    else
      render :edit
    end
  end


  def show
    @restaurants = Restaurant.all
    @users = User.all
    @reservations = Reservation.all
  end

  private
  def restaurant_params
    params.require(:restaurants).permit(:name, :category, :price, :capacity)
  end

  def require_login
      redirect_to new_session_path if session[:user_id].nil?
    end
end
