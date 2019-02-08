class Location < ActiveRecord::Base
  belongs_to :user
  has_many :trips

  def average_rating
    if self.trips.empty?
      "Not Enough Ratings"
    else
      self.trips.average(:rating).round
    end
  end

  def self.recommended(user)
    where("activity_rating <= ? AND excitement_rating <= ?", user.energy, user.fun)
  end
end
