class TripsController < ApplicationController
  def index
    if params[:user_id]
      @trips = User.find(params[:user_id]).trips
    else
      @trips. Trip.all
    end
  end
end
