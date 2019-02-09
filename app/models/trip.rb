class Trip < ActiveRecord::Base
  belongs_to :user
  belongs_to :trip_location, class_name: 'Location', foreign_key: :location_id

  def take_trip
    location = Location.find(self.location_id)
    user = self.user
    if user.travel_credits < location.price && user.energy < location.activity_rating && user.fun < location.excitement_rating
      "Sorry, you don't have enough credits and maybe you'd like something more relaxing & calmer."
    elsif user.travel_credits < location.price
      "Sorry, you don't have enough credits. Reach out to an agent."
    elsif user.energy < location.activity_rating || user.fun < location.excitement_rating
      "Sorry, maybe you want something a little more relaxing or calmer."
    elsif user.travel_credits && (user.energy < location.activity_rating || user.fun < location.excitement_rating)
      "Sorry, you don't have enough credits. And maybe you want something a little calmer."
    else
      user.update(:travel_credits => (user.travel_credits -= location.price))
      update_energy
      update_fun
      "What a trip! Hope you had fun. Don't forget to review."
    end
  end

  def update_energy
    location = Location.find(self.location_id)
    user = self.user
    if location.activity_rating == 1 && user.energy != 5 && user.energy == 1
      user.increment!(:energy)
    else
      user.update(:energy => user.energy -= location.activity_rating)
    end
  end

  def update_fun
    location = Location.find(self.location_id)
    user = self.user
    if location.excitement_rating == 1 && user.fun != 5 && user.fun == 1
      user.increment!(:fun)
    else
      user.update(:fun => user.fun -= location.excitement_rating)
    end
  end
end
