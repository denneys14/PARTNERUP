class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
  end

  def new
    @partner = Partner.find(params[:partner_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user
    @booking.partner_id = Partner.find(params[:partner_id])
    if @booking.save
      redirect_to partner_path(@partner)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
