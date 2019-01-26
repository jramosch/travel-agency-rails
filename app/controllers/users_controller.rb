class UsersController < ApplicationController
  before_action :require_login, only: [:show]

  def new
    @user = User.new
  end

  def create

  end

  private

  def user_params
    params.require(:user).permit(:name, :travel_credits, :mood, :admin, :password, :password_confirmation)
  end
end
