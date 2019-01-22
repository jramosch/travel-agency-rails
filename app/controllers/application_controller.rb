class ApplicationController < ActionController::Base
  helper_method :current_user
  
  def in_session?
    !!session[:user_id]
  end

  def current_user
    @user = User.find(session[:user_id])
  end
end
