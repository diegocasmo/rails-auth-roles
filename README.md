# Auth Roles
Rails 5 example application that provides user management, authentication, and simple role-based authorization.

## Installation
  - Install Ruby 2.3.1 - [RVM](https://rvm.io/) is usually the easiest way
  - Install Rails
    - ``gem install rails``
  - Install [Postgres](https://www.postgresql.org/)
  - Copy ``.env.example`` file to ``.env`` and set up ENV variables accordingly
  - Run the following command to download dependencies and setup the database:
```
  bundle install
  bundle exec rake db:create
  bundle exec rake db:migrate
  bundle exec rake db:seed
```
  - Start the server: ``bundle exec rails s``
