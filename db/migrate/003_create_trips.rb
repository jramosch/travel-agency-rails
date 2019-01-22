class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.integer :location_id
      t.integer :user_rating
    end
  end
end
