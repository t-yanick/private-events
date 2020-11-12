class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    session[:user_id] = user.id
    redirect_to user, notice: "Welcome, #{user.username}"

  end

  def destroy
  end
end
