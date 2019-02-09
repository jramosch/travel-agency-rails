class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    if @location.valid?
      current_user.locations << @location
      return redirect_to '/locations/new' unless @location.save
      redirect_to "/locations/#{@location.id}"
    else
      flash[:notice] = @location.errors.full_messages.join(". ")
      redirect_to new_location_path
    end
  end

  def index
    if params[:user_id]
      if User.find(params[:user_id])
        @locations = User.find(params[:user_id]).trip_locations.uniq
      else
        flash[:notice] = "User not found."
        redirect_to root_path
      end
    else
      @locations = Location.all
    end
  end

  def show
    @location = Location.find(params[:id])
    return redirect_to admin_location_path(@location) if current_user == @location.user
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    return redirect_to edit_location_path(@location) unless @location.save
    redirect_to location_path(@location)
  end

  def take_trip
    @location = Location.find(params[:id])
    trip = Trip.create(user_id: current_user.id, location_id: @location.id)
    flash[:notice] = trip.take_trip
    redirect_to '/'
  end

  def recommended
    @locations = Location.recommended(current_user)
  end

  private
  def location_params
    params.require(:location).permit(:name, :description, :price, :activity_rating, :excitement_rating)
  end
end
