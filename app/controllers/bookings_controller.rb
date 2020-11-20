class BookingsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR duty ILIKE :query"
      @bookings = policy_scope(Booking).where(sql_query, query: "%#{params[:query]}%")
    else
      @bookings = policy_scope(Booking).where(user: current_user)
    end
    @partners = policy_scope(Partner).where(user: current_user)
    @lastbooking = Booking.last
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
