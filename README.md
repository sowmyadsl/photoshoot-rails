## Grace Photography

This is a ruby on rails application built for a photographer who locally captures beautiful pictures and shares her services throughout Oregon.


By Sowmya Dinavahi

## Landing Page:

![screenshot](https://github.com/sowmyadsl/photoshoot-rails/blob/master/public/screenshot.png)


## Description:

This application is build in consideration with users(customers) and grace(photographer ie. admin).These roles includes user authentication using Device gem.

'User' role can :
* Create an account
* Login/Logout of their account.
* Edit their account information.
* View information about services offered
* View detail information on services offered with price information.
* View about and contact info about the photographer.
* Add reviews to the services (only if logged in)


'Admin' role can :
* Add, edit and delete services.
* Delete Unnecessary and inappropriate reviews.

Note: Admin information is seeded into database.


### Usage
You can log in using the credentials provided below, or sign up with your own information.

| Type | Email | Password |
| ---- | ----- | -------- |
| Basic | user@email.com | password |
| Admin | admin@admin.com | password |

### Testing
This application is tested using <a href="http://rspec.info/">rspec</a>. 100% of the application is successfully covered according to <a href="https://github.com/colszowka/simplecov">simplecov</a>

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Postgres](https://www.postgresql.org/)
* [Ruby 2.4.1](https://www.ruby-lang.org/en/downloads/)
* [Rails 5.1.2](http://rubyonrails.org/)

## Installation

In your terminal:
* `git clone https://github.com/sowmyadsl/photoshoot-rails`
* `cd photoshoot-rails`
* Ensure you are running Ruby 2.4.1 and Rails 5.1.2 versions or later.
* `bundle install`
* Open another terminal window and type `postgres`.  Leave this window open.
* In your first terminal window type:
* `bundle exec rake db:create`
* `bundle exec rake db:setup`
* `bundle exec rake db:test:prepare`

## Development server

Run `bundle exec rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

## Running tests

This app includes unit and integration testing using RSpec, Factory girl, Shouldamatchers, and Capybara for testing.
Run `bundle exec rspec` in terminal to test.

## Technologies Used

* Ruby
* Rails
* ActiveRecord
* Postgres
* Bundler
* Rake Gem
* Devise Gem
* Rspec
* HTML
* CSS
* Bootstrap
* ES6

## Known Bugs
_N/A_

## Support and contact details
Feel free to contact me at sowmya.dsl@gmail.com

### License
*This software is licensed under the MIT license*
Copyright © 2017 **Sowmya Dinavahi**
