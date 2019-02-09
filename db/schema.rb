# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 3) do

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
    t.integer "activity_rating"
    t.integer "excitement_rating"
    t.integer "user_id"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "user_id"
    t.integer "location_id"
    t.integer "rating"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.integer "travel_credits"
    t.integer "energy"
    t.integer "fun"
    t.boolean "admin", default: false, null: false
    t.string "provider"
    t.string "uid"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
  end

end
