class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :create, :new]
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    # @user = current_user
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    authorize @offer
    # raise
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def show
    @offer = Offer.find(params[:id])
    authorize @offer
  end


  def edit
    authorize @offer
  end

  def update
    authorize @offer
  end

  def destroy
    authorize @offer
  end

  def my_offers
    @offers = policy_scope(Offer)
    authorize @offers
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  private

  def offer_params
    params.require(:offer).permit(:name, :sport, :price, :photo)
  end
end
