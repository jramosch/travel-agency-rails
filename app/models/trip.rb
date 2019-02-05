class Trip < ActiveRecord::Base
  belongs_to :user
  belongs_to :trip_location, class_name: 'Location', foreign_key: :location_id

  def take_trip
    location = Location.find(self.location_id)
    user = User.find(self.user_id)
    if user.travel_credits < location.price && user.energy < location.activity_rating && user.fun < location.excitement_rating
      "Sorry, you don't have enough credits and maybe you'd like something more relaxing & calmer."
    elsif user.energy < location.activity_rating && user.fun < location.excitement_rating
      "Sorry, maybe you want something a little more relaxing & calmer."
    elsif user.fun < location.excitement_rating
      "Sorry, maybe you want something a little calmer."
    else
      user.update(:travel_credits => (user.travel_credits -= location.price))
      "What a trip! Hope you had fun. Don't forget to review."
    end
  end
end
