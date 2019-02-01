class Admin::LocationsController < ApplicationController
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
