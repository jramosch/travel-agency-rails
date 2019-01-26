class UsersController < ApplicationController
  before_action :require_login, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    return redirect_to '/users/new' unless @user.save
    session[:user_id]
    redirect_to "/users/#{@user.id}"
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :travel_credits, :mood, :admin, :password, :password_confirmation)
  end

  def require_login
    return redirect_to '/' unless session.include? :user_id
  end
end
