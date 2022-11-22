class SessionsController < ApplicationController
  def index
    @sessions = Offer.all
  end

  def new
    @session = Offer.new
  end

  def show
  end

  def create
  end

end
