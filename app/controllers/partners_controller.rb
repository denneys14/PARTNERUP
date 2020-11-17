class PartnersController < ApplicationController
  def index
    @partners = Partner.all
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
    if @partner.save
      redirect_to partner_path(@partner)
    else
      render :new
    end
  end

  def edit
    @partner = Partner.find(params[:id])
  end

  def update
    @partner = Partner.find(params[:id])

    if @partner.update(partner_params)
      redirect_to partner_path(@partner)
    else
      render :edit
    end
  end

  def destroy
    @partner = Partner.find(parms[:id])
    @partner.destroy
    redirect_to partners_path
  end

  private

  def partner_params
    params.require(:partner).permit(:duty, :name, :gender, :age, :description)
  end
end
