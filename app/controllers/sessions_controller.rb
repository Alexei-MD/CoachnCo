class SessionsController < ApplicationController

  def index
    @sessions = Session.all
  end

  def new
    @session = Session.new
  end

  def show
  end

  def create
  end

  def my_sessions
  end

end
