class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.integer :location_id
      t.integer :rating
    end
  end
end
