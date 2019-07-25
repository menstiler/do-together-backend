class EventsController < ApplicationController

  def index
    events = Event.all
    render json: events
  end

  def show
    event = Event.find(params[:id])
    render json: event
  end

  def create
    event = Event.create(event_params)
    render json: event
  end

  def update
    event = Event.find(params[:id])
    event.update(event_params)
    render json: event
  end

  def delete
    event = Event.find(params[:id])
    event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:time, :group_id, :activity_id)
  end

end
