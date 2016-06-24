  class ReservationsController < ApplicationController


    def new
      @reservation = Reservation.new
    end

    def create
      @reservation = Reservation.new
      if @reservation.save
        redirect_to new_reservation_path
      else
        render :new
      end
    end
    
  end
