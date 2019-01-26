class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  private
  def location_params
    params.require(:location).permit(:name, :description, :price, :activity_rating, :excitement_rating)
  end
end
