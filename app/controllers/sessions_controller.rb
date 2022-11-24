class SessionsController < ApplicationController

  def index
    @sessions = Session.all
  end

  def show
  end

  def new
    @session = Session.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @session = Session.new(session_params)
    @session.user = current_user
    @session.offer_id = @offer.id
    if @session.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
    # @session = Session.create(session_params)
    authorize @session
  end

  def my_sessions
    @sessions = policy_scope(Session)
    authorize @sessions
    @my_sessions = @sessions.where(user: current_user)
  end

  private

  def session_params
    params.require(:session).permit(:start_time, :end_time)
  end
end
