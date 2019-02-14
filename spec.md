# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (Location has_many Trips, User has_many Trips, User has_many Locations, etc.)
- [x] Include at least one belongs_to relationship (Location belongs_to User, Trip belongs_to User, etc.)
- [x] Include at least two has_many through relationships (Users has_many Trip_Locations through Trips, Locations has_many Users through Trips)
- [x] Include at least one many-to-many relationship (User has_many Locations (via trip_locations) and Locations has_many Users)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (trip.rating is submittable by User after taking trip)
- [x] Include reasonable validations for simple model objects (list of model objects with validations: User, Location)
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. Location.recommended URL: /locations/recommended)
- [x] Include signup (Using bcrypt)
- [x] Include login (Using bcrypt)
- [x] Include logout (Using bcrypt)
- [x] Include third party signup/login (Using omniauth, omniauth-google, and omniauth-google-oauth2)
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
- [x] Include nested resource "new" form (URL e.g. users/2/trips/new)
- [x] Include form display of validation errors (form URL e.g. /users/new, /locations/new, and /users/:id/trips/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
