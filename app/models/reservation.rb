class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant



  # def self.reduce_capacity_when_reserved(restaurant_capacity, restaurant_id)
  #
  #   restaurant_capacity -=
  #   # restaurant_place_holder = Restaurant.find(restaurant_id)
  #   # reservation_place_holder = @reservation.people
  #   #
  #   #     if restaurant_place_holder.capacity - reservation_place_holder > 0
  #   #       restaurant_place_holder.capacity -= reservation_place_holder.people
  #   #       restaurant_place_holder.save
  #   #     end
  #
  #
  # end

end
