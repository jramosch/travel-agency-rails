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
    ["name", "description", "price", "activity_rating", "excitement_rating"]
  :locations => [
    [" COMO Cocoa Island, The Maldives",
    "Christina Ong’s hotels—the Turks and Caicos’s Parrot Cay, Bangkok’s Metropolitan—are all about detail, and Cocoa Island is no exception, from the reconditioned Vietnamese fans in the bar and restaurant to the signature bathroom products made by Baldwins, the renowned British herbalist. The 33 freestanding accommodations resemble a phalanx of dhonis (traditional Maldivian fishing boats), but the interiors are best described as New England beach hut meets National Geographic, with tongue-and-groove white walls and ethnic floor cushions.",
    150, 2, 2],
    ["Southern Ocean Lodge, Kangaroo Island, Australia",
    "If Kangaroo Island—an unspoiled 1,700-square-mile haven teeming with native animals—is Australia’s Galápagos, then the Southern Ocean Lodge is a very natural selection, with its recycled timber floors, soaring glass, and limestone. A thoroughly evolved eco-wilderness lodge, this 21-suite human sanctuary has panoramic ocean views from the pristine clifftop brushland it inhabits. The lodge takes full advantage of the natural abundance, and the rates include treks, evening "Kangaroos and Kanapés" excursions, and half-day tours that take in seal colonies, the island’s oldest lighthouse, and remarkable rock formations.",
    150, 3, 2],
    ["The Lodge at Pebble Beach, California",
    "Set between Carmel and Monterey, this 1919 cream-colored lodge with green awnings and 13 multistory guesthouses is on the eighteenth green of the Pebble Beach Golf Links. Rooms have fireplaces and private decks overlooking the gardens, oceanside fairways, and Carmel Bay. There's more than enough to attract non-golfers, too. Spa treatments incorporate seaweed and other local ingredients. Recent renovations included the the addition of 38 rooms in aptly-named Fairway One.",
    120, 1, 1]
  ]
}
