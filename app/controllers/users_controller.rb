class UsersController < ApplicationController
  before_action :require_login, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @user.travel_credits = 500
    return redirect_to '/users/new' unless @user.save
    session[:user_id] = @user.id
    flash[:notice] = "Welcome & thank you for signing up!"
    redirect_to "/users/#{@user.id}"
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    return redirect_to edit_admin_use_path(@user) unless @user.save
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :travel_credits, :energy, :fun, :admin, :password, :password_confirmation)
  end

  def require_login
    return redirect_to '/' unless session.include? :user_id
  end
end
