class PartnersController < ApplicationController
  def index
    @partners = Partner.all
  end

  def show
    @parter = Partner.find(params[:id])
  end

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(partner_params)
    @partner.user = current_user
    if @partner.save
      redirect_to ###(@partner)
    else
      render :new
    end
  end

  private

  def partner_params
    params.require(:partner).permit(:duty, :name, :gender, :age, :description)
  end
end
