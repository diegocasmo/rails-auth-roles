# Auth Roles
Rails 5 example application that provides user management, authentication, and simple role-based authorization. All TDD with RSpec for unit tests and Cucumber alongside Capybara for integration tests.

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

## Running Tests Setup
  - Database setup:
``` bash
  bundle exec rake db:migrate
  bundle exec rake db:test:prepare
```
## Running Integration tests:
  - Run ``cucumber`` to run all tests
  - Only run scenarios with tag @wip
```
cucumber --profile wip
```
  - Run a single scenario
```
  bundle exec cucumber /path/to/file.feature:9
```

## Running unit tests:
  - Run ``rspec`` to run all application specs
  - Run ``rspec path/to/file_spec.rb`` to run a specific set of specs
