class EventController < ApplicationController

  before_action :is_authenticated, only: [:new,:create]

  def index
    @events = Event.all
  end

  def new
  end

  def create
    @current_user = User.find(session[:user_id])
    latest_event = Event.create(event_params)
    redirect_to event_path(latest_event)
  end

  def update
  end

  def delete
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :time, :image)
  end

end
