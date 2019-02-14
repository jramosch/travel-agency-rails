class TripsController < ApplicationController
  def index
    if params[:user_id]
      @trips = User.find(params[:user_id]).trips
    else
      @trips. Trip.all
    end
  end

  def new
    @trip = Trip.new
    @location_options = Location.all.map {|l| ["#{l.name} - $#{l.price}", l.id]}
  end

  def create
    location = Location.find(trip_params[:location_id])
    trip = Trip.create(user_id: current_user.id, location_id: location.id)
    flash[:notice] = trip.take_trip
    redirect_to '/'
  end

  private
  def trip_params
    params.require(:trip).permit(:user_id, :location_id)
  end
end
