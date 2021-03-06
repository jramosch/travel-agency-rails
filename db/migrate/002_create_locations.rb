class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :activity_rating
      t.integer :excitement_rating
      t.integer :user_id
    end
  end
end
