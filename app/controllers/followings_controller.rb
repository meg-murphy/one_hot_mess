class FollowingsController < ApplicationController

  def follow
    Following.create(follower_id: current_user.id, followee_id: params[:user_id])
    redirect_to "/users/#{params[:user_id]}"
  end

  def unfollow
    unfollow_user = Following.find_by(follower_id: current_user.id, followee_id: params[:user_id])
    unfollow_user.destroy
    redirect_to "/users/#{params[:user_id]}"
  end

end
