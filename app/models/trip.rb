class Trip < ActiveRecord::Base
  belongs_to :user
  belongs_to :trip_location, class_name: 'Location', foreign_key: :location_id

  def take_trip
    
    if current_user.travel_credits < self.location.price .energy < self.location.energy_rating && current_user.fun

    end
  end
end
