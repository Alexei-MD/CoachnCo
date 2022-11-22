class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    # @user = current_user
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    # raise
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def show
    @offer = Offer.find(params[:id])
  end


  def edit
  end

  def update
  end

  def destroy
  end

  private

  def offer_params
    params.require(:offer).permit(:name, :sport, :price, :photo)
  end
end
