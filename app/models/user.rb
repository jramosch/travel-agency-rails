class User < ActiveRecord::Base
  has_secure_password
  attr_accessor :trip_rating

  has_many :locations
  has_many :trips
  has_many :trip_locations, through: :trips

  def last_trip
    self.trips.last
  end
end
