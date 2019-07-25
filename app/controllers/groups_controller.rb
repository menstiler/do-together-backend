class GroupsController < ApplicationController
  def index
    groups = Group.all
    render json: groups
  end

  def show
    group = Group.find(params[:id])
    render json: group
  end

  def create
    group = Group.create(group_params)
    render json: group
  end

  def update
    group = Group.find(params[:id])
    group.update(group_params)
    render json: group
  end

  def delete
    group = Event.find(params[:id])
    group.destroy
  end


  private

  def group_params
    params.require(:group).permit(:name)
  end
end
