class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :in_session?

  def home
    if in_session?
      @user = User.find(session[:user_id])
      render "application/welcome"
    end
  end

  def in_session?
    !!session[:user_id]
  end

  def current_user
    @user = User.find(session[:user_id]) unless session[:user_id].nil?
  end
end
