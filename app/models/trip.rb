class Trip < ActiveRecord::Base
  belongs_to :user
  belongs_to :trip_location, class_name: 'Location', foreign_key: :location_id

  def take_trip
    location = self.trip_location
    if current_user.travel_credits < location.price && current_user.energy < location.activity_rating && current_user.fun < location.excitement_rating
      "Sorry, you don't have enough credits and maybe you'd like something more relaxing & calmer."
    elsif current_user.energy < location.activity_rating && current_user.fun < location.excitement_rating
      "Sorry, maybe you want something a little more relaxing & calmer."
    elsif current_user.fun < location.excitement_rating
      "Sorry, maybe you want something a little calmer."
    end
  end
end
