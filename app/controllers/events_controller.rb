class EventsController < ApplicationController
  before_action :set_event, only: [:show]
  before_action :authenticate, only: %i[create new]

  def index
    @events = Event.all
  end

  def show; end

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:description, :date)
  end

  def authenticate
    redirect_to login_path, notice: 'You have to login' if session[:user_id].nil?
  end
end
