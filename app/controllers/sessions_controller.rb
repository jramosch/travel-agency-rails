class SessionsController < ApplicationController
  def new
    @users = User.all
    redirect_to '/' if in_session?
  end

  def create
    @user = User.find_or_create_by(:username)
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect_to '/'
  end
end
