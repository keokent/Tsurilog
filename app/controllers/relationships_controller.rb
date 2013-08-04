class RelationshipsController < ApplicationController
#  before_action :signed_in_user

  def create
    @user = User.find(params[:relationship][:lure_id])
    current_user.register!(@user)
    redirect_to user_url
  end

  def destroy
    @lure = Relationship.find(params[:id]).lure
    current_user.unregister!(@lure)
    redirect_to current_user_path
  end
end
