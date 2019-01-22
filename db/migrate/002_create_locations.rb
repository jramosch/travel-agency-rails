class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :price
      t.integer :activity_rating
      t.integer :excitement_rating
    end
  end
end
