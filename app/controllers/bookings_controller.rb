class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @partner = Partner.find(params[:partner_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.partner = Partner.find(params[:partner_id])
    if @booking.save!
      redirect_to partner_booking_path(@booking.partner, @booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :date, :partner_id)
  end
end
