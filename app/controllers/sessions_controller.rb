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
  end

  def my_sessions
  end

  private

  def set_session

  end

  def session_params

  end
end
