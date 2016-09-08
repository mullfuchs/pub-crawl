class EventController < ApplicationController

  before_action :is_authenticated, only: [:new,:create]

  def index
    @events = Event.all
  end

  def new
  end

  def create
    @current_user = User.find(session[:user_id])
    @event = Event.create(event_params)
    redirect_to root_path
  end

  def update
  end

  def delete
  end

  def show
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :time, :picture)
  end

end
