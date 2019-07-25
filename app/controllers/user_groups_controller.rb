class UserGroupsController < ApplicationController
  def index
    user_group = UserGroup.all
    render json: user_group
  end

  def create
    user_group = UserGroup.create(user_group_params)
    render json: user_group
  end

  private

  def user_group_params
    params.require(:user_group).permit(:user_id, :group_id)
  end
end
