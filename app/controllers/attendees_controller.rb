class AttendeesController < ApplicationController
  def create
    attendee = Attendee.create(user_id: params[:user_id], event_id: params[:event_id])
    render json: attendee
  end

  def index
    attendees = Attendee.all
    render json: attendees
  end

  def show
    attendee = Attendee.find(params[:id])
    render json: attendee
  end

  def destroy
    attendee = Attendee.find(params[:id])
    attendee.delete
  end
end
