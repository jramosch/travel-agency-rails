class ApplicationController < ActionController::Base
  before_action :require_login, except: [:home]
  protect_from_forgery with: :exception
  helper_method :current_user, :in_session?

  def home
    if in_session?
      @user = User.find(session[:user_id])
      render "application/welcome"
    end
  end

private

  def in_session?
    !!session[:user_id]
  end

  def current_user
    @user = User.find(session[:user_id]) unless session[:user_id].nil?
  end

  def require_login
    return head(:forbidden) unless in_session?
  end
end
