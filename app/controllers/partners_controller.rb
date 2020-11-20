class PartnersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @partners = policy_scope(Partner)
    @markers = @partners.geocoded.map do |partner|
      {
        lat: partner.latitude,
        lng: partner.longitude
      }
    end

    if params[:query].present?
      sql_query = "name ILIKE :query OR duty ILIKE :query"
      @partners = policy_scope(Partner).where(sql_query, query: "%#{params[:query]}%")
    else
      @partners = policy_scope(Partner)
    end
  end

  def show
    @partner = Partner.find(params[:id])
    @booking = Booking.new
  end

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(partner_params)
    @partner.user = current_user
    if @partner.save!
      redirect_to partner_path(@partner)
    else
      render :new
    end
  end

  def edit
    @partner = Partner.find(params[:id])
    authorize @partner
  end

  def update
    @partner = Partner.find(params[:id])
    authorize @partner
    if @partner.update(partner_params)
      redirect_to partner_path(@partner)
    else
      render :edit
    end
  end

  def destroy
    @partner = Partner.find(params[:id])
    authorize @partner
    @partner.destroy
    redirect_to partners_path
  end

  private

  def partner_params
    params.require(:partner).permit(:duty, :name, :gender, :age, :description, :photo, :url_photo, :address)
  end
end
