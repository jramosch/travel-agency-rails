class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    return redirect_to '/locations/new' unless @location.save
    redirect_to "/locations/#{@location.id}"
  end

  def index
    @locations = Location.all
  end

  private
  def location_params
    params.require(:location).permit(:name, :description, :price, :activity_rating, :excitement_rating)
  end
end
