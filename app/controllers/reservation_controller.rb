class ReservationController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(params[:reservation])
    if @reservation.save
      render('confirmation')
    else 
      render('new')
    end
  end

  def confirmation
    @reservation = Reservation.find(params[:id])
  end
end
