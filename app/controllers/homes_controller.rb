class HomesController < ActionController::Base

  def index
    @reservation = Reservation.new
  end

end
