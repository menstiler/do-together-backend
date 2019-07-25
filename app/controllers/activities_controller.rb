class ActivitiesController < ApplicationController

  def index
    activities = Activity.all
    render json: activities
  end

  def show
    activity = Activity.find(params[:id])
    render json: activity
  end

  def create
    activity = Group.create(activity_params)
    render json: activity
  end

  def update
    activity = Activity.find(params[:id])
    activity.update(activity_params)
    render json: activity
  end

  def delete
    activity = Activity.find(params[:id])
    activity.destroy
  end

  private

  def activity_params
    params.require(:group).permit(:title, :location)
  end
end
