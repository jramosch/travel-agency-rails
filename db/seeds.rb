# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


DATA = {
  :user_keys =>
    ["name", "ticket_credits", "energy", "fun", "password"]
  :users => [
    ["Kratos", 1030, 5, 2, "password"],
    ["Arkam Knight", 920, 3, 3, "password"],
    ["Bayonetta", 666, 1, 5, "password"]
  ],
  :location_leys =>
  []
}
