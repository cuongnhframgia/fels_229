class ActivitiesController < ApplicationController
  before_action :logged_in_user, only: :destroy
  before_action :correct_user, only: :destroy

  def destroy
    @activity.destroy
    flash[:success] = t "controller.activities.destroy_flash"
    redirect_to request.referrer || root_url
  end

  private
  def activity_params
    params.require(:activity).permit :content
  end

  def correct_user
    @activity = current_user.activities.find_by id: params[:id] 
    redirect_to root_url if @activity.nil?
  end
end
