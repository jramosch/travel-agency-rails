class Location < ActiveRecord::Base
  belongs_to :user, optional: true
  has_many :trips
  has_many :users, through: :trips

  validates_presence_of :name, :description, :price
  validates_uniqueness_of :name

  def average_rating
    if self.trips.empty? || self.trips.average(:rating).nil?
      "Not Enough Ratings"
    else
      self.trips.average(:rating).round
    end
  end

  def self.recommended(user)
    where("activity_rating <= ? AND excitement_rating <= ?", user.energy, user.fun)
  end
end
