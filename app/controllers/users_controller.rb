class UsersController < ApplicationController
  before_action :require_login, only: [:show]
  def new
    @user = User.new
  end

  def create

  end
end
