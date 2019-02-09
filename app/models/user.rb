class User < ActiveRecord::Base
  has_secure_password :validations => false
  attr_accessor :trip_rating

  validates_presence_of :name, :password
  validates_uniqueness_of :name

  has_many :locations
  has_many :trips
  has_many :trip_locations, through: :trips

  def last_trip
    self.trips.last
  end

  def self.from_omniuth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
