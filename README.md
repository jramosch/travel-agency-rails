# README

Steps necessary to get the application up and running and a brief overview of the app in this repository.

## Travel Agency Rails Description
My Rails portfolio project functions as a virtual travel agency in which users can create accounts, browse locations, and take trips which impact a user's travel credits, energy, and fun. Admin users have the ability to create and edit locations, while editing account details for users. Users also have the option of signing in with their Google account, skipping over the sign up option.

## Start Up Instructions
1. Fork your own copy of the repository
2. From you terminal, clone the git repository: `git clone git@github.com:yourusername/travel-agency-rails.git`
3. Once finished, change your directory to the newly cloned directory: `cd travel-agency-rails`
4. From the project's parent directory, run `bundle install` and `rake db:migrate` to set up the program's gems and database
5. Seed the database with the command `rake db:seed`
6. Launch a local server using `rails s`
7. Using your browser, navigate to http://localhost:3000
8. Begin with signing up with an account or singing in with a Google account
9. Follow links or prompts as you wish

## Contributing
Bug reports and pull requests are welcome https://github.com/jramosch/travel-agency-rails. This project is intended to be a space for collaboration and contributors are expected to adhere to the [Contributor Covenant] (https://www.contributor-covenant.org/) code of conduct.

## Licensing Statement
This project has been licensed under the MIT open source license. License information for the project is provided in the LICENSE.MD file in this directory.
