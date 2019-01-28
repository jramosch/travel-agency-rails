class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    current_user.locations << @location
    return redirect_to '/locations/new' unless @location.save
    redirect_to "/locations/#{@location.id}"
  end

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def take_trip
    @location = Location.find(params[:id])
    trip = Trip.create(user_id: current_user.id, location_id: @location.id)
    trip.take_trip
    redirect_to '/'
  end

  private
  def location_params
    params.require(:location).permit(:name, :description, :price, :activity_rating, :excitement_rating)
  end
end
