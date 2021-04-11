class ReservationController < ApplicationController
  def new
    
    @reservation = Reservation.new(reservation_params)
  end

  def create
    @reservation = Reservation.new(reservation_params)
    puts 'hello'
  end

  def confirmation
  end

  private

  def reservation_params
    params.require(:reservation).permit(:end_date_time, :start_date_time, :room)
  end
end
