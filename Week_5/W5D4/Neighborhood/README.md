## 1. Create the project with a psql database
- Make sure that psql is running, and then run:

`Rails new Neighborhood -G --database=postgresql`

## 2. Add Gems as needed
in Gemfile:

```
group :development do
  # I removed the other ones from the instructions because they were wrecking people's computers.
  gem 'byebug'
  gem 'pry-rails'
  gem 'annotate' # optional, adds a chart on top of model files. But remove it if it raises an error when running "bundle exec"
end
```

## 3. Run bundle install
`bundle install`

## 4. Create database
`rails db:create`

## 5. Create migrations
`rails generate migration createPerson`

`rails generate migration createHouse`

## 6. Define the tables in the migration files, db/migrate
https://github.com/JoseMiralles/Homework/tree/master/Week_5/W5D4/Neighborhood/db/migrate

NOTE: I forgot to create indexes, but this is how they are created in a migration:

```
class CreatePerson...
  def change
  ...
    add_index :people, :id # Adds "index" to the id column in the "people" table.
    add_index :locations, :place, unique: true # Adds index to the place column in the locations table.
  ...
  end
end
```

## 7. Apply migrations
- This creates empty tables in the database.

`rails db:migrate`

## 8. create models in app/models (ex: person.rb, house.rb)

- Just create them like any other ruby file:
https://github.com/JoseMiralles/Homework/tree/master/Week_5/W5D4/Neighborhood/app/models
#### Optional, annotate:
If you have the annotate gem installed, you can get schema info in your model file.

`bundle exec annotate --models`

- I'm not 100% sure how this works tbh.

## 9. add validation and associations in model files (person.rb, house.rb)
- Look at the files from the previous step.

# TESTING
## 1. Open a console with pry within the rails app context:

`Rails c` or `Rails console`
- This creates a pry session, but the project is already loaded into it so we have access to the classes and the DB.

Enter the following commands:
Create a house:
- `white_house = House.new()`
- `white_house.address = "1600 Pennsylvania Avenue NW, Washington, DC 20500"`
- `white_house.valid? # should return true.`
- `white_house.save` # should insert into db
- `House.all` # should have the WH in it.

Create some people:
- `person1 = Person.new`
- `person1.name = "Joe Biden"`
- `person1.house_id = 1`
- `person1.valid?` # should be true
- `person1.save` # should save person1 in the db

- `person2 = Person.new({name: "Jill Biden", house_id: 1})`
- `person2.save` # should add to DB

- `Person.all` # should list both people in an array.
- `white_house.residents` # should also list both people
- `person2.house` #should show the address for the white house.

# Using seeds.rb instead
- This makes it easier to populate the database.
## 1. Create objects in the seed.rb file:

```
# Destroy all of the data in the Post, User, and Location tables.
Post.destroy_all
User.destroy_all
Location.destroy_all

loc_1 = Location.create!({place: Sydney})
loc_2 = Location.create!({place: New York})

user_1 = User.create!({username: "Andy", location_id: loc_1.id})
user_2 = User.create!({username: "Josh", location_id: loc_2.id})

Post.create!({body: "I hate mornings", author_id: user_1.id})
```

## 2. Aplly the seed to the db:

`Bundle exec rails db:seed`
