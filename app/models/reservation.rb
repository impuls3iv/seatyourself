class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  def capacity_update
    @restaurant.capacity -= @reservation.people
  end

end
