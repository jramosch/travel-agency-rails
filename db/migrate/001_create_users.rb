class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.integer :travel_credits
      t.integer :energy
      t.integer :fun
      t.boolean :admin, default: false, null: false
      t.string :uid
      t.string :oauth_token
      t.datetime :oauth_expires_at
    end
  end
end
