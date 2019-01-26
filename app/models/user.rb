class User < ActiveRecord::Base
  has_secure_password
  
  has_many :locations
  has_many :trips
  has_many :trip_locations, through: :trips
end
