class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.integer :travel_credits
      t.string :mood
      t.boolean :admin, default: false, null: false
    end
  end
end
