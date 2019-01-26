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
  :location_keys =>
    ["name", "description", "price", "activity_rating", "excitement_rating"]
  :locations => [
    [" COMO Cocoa Island, The Maldives",
    "Christina Ong’s hotels—the Turks and Caicos’s Parrot Cay, Bangkok’s Metropolitan—are all about detail, and Cocoa Island is no exception, from the reconditioned Vietnamese fans in the bar and restaurant to the signature bathroom products made by Baldwins, the renowned British herbalist. The 33 freestanding accommodations resemble a phalanx of dhonis (traditional Maldivian fishing boats), but the interiors are best described as New England beach hut meets National Geographic, with tongue-and-groove white walls and ethnic floor cushions.",
    200, 2, 2],
    ["Southern Ocean Lodge, Kangaroo Island, Australia",
    "If Kangaroo Island—an unspoiled 1,700-square-mile haven teeming with native animals—is Australia’s Galápagos, then the Southern Ocean Lodge is a very natural selection, with its recycled timber floors, soaring glass, and limestone. A thoroughly evolved eco-wilderness lodge, this 21-suite human sanctuary has panoramic ocean views from the pristine clifftop brushland it inhabits. The lodge takes full advantage of the natural abundance, and the rates include treks, evening "Kangaroos and Kanapés" excursions, and half-day tours that take in seal colonies, the island’s oldest lighthouse, and remarkable rock formations.",
    280, 3, 2],
    ["The Lodge at Pebble Beach, California",
    "Set between Carmel and Monterey, this 1919 cream-colored lodge with green awnings and 13 multistory guesthouses is on the eighteenth green of the Pebble Beach Golf Links. Rooms have fireplaces and private decks overlooking the gardens, oceanside fairways, and Carmel Bay. There's more than enough to attract non-golfers, too. Spa treatments incorporate seaweed and other local ingredients. Recent renovations included the the addition of 38 rooms in aptly-named Fairway One.",
    150, 1, 1],
    ["Angel Fire Resort, New Mexico",
    "Angel Fire Resort offers a variety of activities including skiing, snowboarding, zipline adventure tours, downhill mountain biking, golf, Tennis, and more!",
    220, 5 ,4],
    ["Catskill Adventure Resort, New York",
    "The lush beauty of the Catskill Mountains in New York is well-known all throughout the nation, and it is for this reason that the Catskill Adventure Resort has chosen this region to provide your family the best New York camping experience possible! Maple and oak trees, some reaching heights of more than 100 feet, adorn the countryside around the campground. The picturesque pond beckons you to relax.",
    125, 4, 3],
    ["Casa de Campo, Dominican Republic",
    "An exclusive & luxurious resort, featuring impressive villas, championship golf courses and private beaches. Discover your dream Dominican Republic vacation!",
    350, 2, 1]
  ]
  :admins => [
    "Jamilya R-C",
    "Bruce Wayne"
  ]
}

def main
  make_users
  make_admins
  make_locations
end

def make_users
  DATA[:users].each do |user|
    new_user = User.new
    user.each_with_index do |attribute, i|
      new_user.send(DATA[:user_keys][i]+"=", attribute)
    end
    new_user.save
  end
end

def make_admins
  DATA[:admins].each do |name|
    User.create(name: name, admin: true, password: 'password')
  end
end

def make_locations
  DATA[:locations].each do |location|
    new_location = Location.new
    location.each_with_index do |location, i|
      new_location.send(DATA[:location_keys][i]+"=", attribute)
    end
    new_location.save
  end
end

main
