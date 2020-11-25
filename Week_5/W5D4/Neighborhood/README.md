1. Rails new Neighborhood -G --database=postgresql
- Make sure that the db is running.

2. Add Gems as desired

group :development do
  # Run 'bundle exec annotate' in Terminal to add helpful comments to models.
  gem 'annotate'

  # These two give you a great error handling page.
  # But make sure to never use them in production!
  gem 'better_errors'
  gem 'binding_of_caller'

  # Gotta have byebug...
  gem 'byebug'

  # pry > irb
  gem 'pry-rails'
end

3. Run "bundle install"

4. Create db "rails db:create"

5. Create migrations
- "rails generate migration createPerson"
- "rails generate migration createHouse"

6. Define the tables in the migration files, db > migrate
