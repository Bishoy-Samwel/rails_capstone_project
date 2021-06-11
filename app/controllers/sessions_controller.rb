class SessionsController < ApplicationController
  def create
    user = User.find_by(user_name: params[:user_name])
    # finds existing user, checks to see if user can be authenticated
    if user.present?
      # sets up user.id sessions
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in successfully'
    else
      flash.now[:alert] = 'Invalid username'
      render :new
    end
  end

  def destroy
    # deletes user session
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged Out'
  end
end
