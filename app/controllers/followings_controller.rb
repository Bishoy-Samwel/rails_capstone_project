class FollowingsController < ApplicationController
  def create
    @following = Current.user.followings.new(followed_id: params[:user_id])
    if @following.save
      flash[:notice] = "You are following #{User.find(params[:user_id]).full_name}"
    else
      flash[:alert] = 'Something went wrong ...'
    end
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @following = Following.find_by(follower_id: Current.user.id, followed_id: params[:user_id]).destroy
    redirect_back(fallback_location: root_path)
  end
end
