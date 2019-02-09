class ApplicationController < ActionController::Base
  before_action :require_login, except: [:home]
  protect_from_forgery with: :exception
  helper_method :current_user, :in_session?, :authenticate_admin

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

  def authenticate_admin
    return unless !current_user.admin?
    flash[:notice] = "Sorry, you have to be an admin to view."
    redirect_to root_path unless current_user.admin?
  end
end
