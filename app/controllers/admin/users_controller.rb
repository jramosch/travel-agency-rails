class Admin::UsersController < ApplicationController
  before_action :authenticate_admin
  def index
    @users = User.all.where(admin: false)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end
end
