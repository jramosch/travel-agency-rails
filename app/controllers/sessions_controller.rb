class SessionsController < ApplicationController
  def new
    @users = User.all
    redirect_to '/' if in_session?
  end

  def create
    if params[:provider]
      @user = User.from_omniuth(request.env["omniauth.auth"])
    else
      @user = User.find_or_create_by(name: params[:user_name])
      return head(:forbidden) unless @user.authenticate(params[:password])
    end
    session[:user_id] = @user.id
    flash[:notice] = "Successfully logged in!"
    redirect_to '/'
  end

  def destroy
    session.delete :user_id unless session[:user_id].nil?
    redirect_to '/'
  end
end
