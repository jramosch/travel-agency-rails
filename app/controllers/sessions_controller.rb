class SessionsController < ApplicationController
  def new
    @users = User.all
    redirect_to '/' if in_session?
  end
end
