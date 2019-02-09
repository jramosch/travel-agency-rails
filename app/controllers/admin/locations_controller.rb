class Admin::LocationsController < ApplicationController
  before_action :authenticate_admin
  
  def index
    @locations = current_user.locations
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
    @location = Location.find(params[:id])
  end
end
