class BookingsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @partner = Partner.find(params[:cocktail_id])
    @booking = Booking.new
  end

  def create
    @booking = Dose.new(booking_params)
    @booking.user_id = current_user
    @booking.partner_id = Partner.find(params[:cocktail_id])
    if @booking.save
      redirect_to partner_path(@partner)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:dose).permit(:start_time, :end_time, :ingredient_id)
  end
end
