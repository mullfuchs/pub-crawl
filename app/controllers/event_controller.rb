class EventController < ApplicationController

  before_action :is_authenticated, only: [:new,:create]

  def index
    @events = Event.all
  end

  def new
  end

  def create
    # puts event_params.inspect
    # puts event_params.[:image].path
    @current_user = User.find(session[:user_id])
    #latest_event = Event.create(event_params)
    # redirect_to event_path(latest_event)

    uploaded_file = event_params[:image].path
    cloudinary_file = Cloudinary::Uploader.upload(uploaded_file)
       # render json: cloudinary_file
    new_event = {
      :name => event_params[:name],
      :date => event_params[:date],
      :time => event_params[:time],
      :image => cloudinary_file['public_id'],
      :location_ids => event_params[:location_ids],
      :users => [@current_user]
    }
    current_event = Event.create(new_event)
    redirect_to event_path(current_event)

  end

  def update

  end

  def delete
    
    Event.find(params[:id]).destroy

    flash[:danger] = "Crawl deleted, this is probably for the best..."
    redirect_to root_path
  end

  def show
    @event = Event.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def addlocation
    current_event = Event.find(params[:id])
    current_event.locations.create(location_params)
    redirect_to event_path(Event.find(params[:id]))
  end

  def join
    current_user = User.find(session[:user_id])
    current_event = Event.find(params[:id])
    current_event.users.push(current_user)
    flash[:success] = "You joined the event! GET PSYCHED"
    redirect_to event_path(current_event)
  end

  def leavelocation
    current_event = Event.find (params[:event_id])
    location = Location.find(params[:loc_id])
    location.update(has_been_visited: true)
    
    redirect_to event_path(current_event)
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :time, :image, :location_ids => [], :users => [])
  end

  def location_params
    params.require(:location).permit(:name, :address, :latitude, :longitude, :arrivetime, :departtime)
  end


end
