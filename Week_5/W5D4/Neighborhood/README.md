# 1. Create the project with a psql database
- Make sure that psql is running, and then run:

`Rails new Neighborhood -G --database=postgresql`

# 2. Add Gems as desired
in Gemfile:

```
group :development do
  gem 'byebug'
  gem 'pry-rails'
end
```

# 3. Run bundle install
`bundle install`

# 4. Create database
"rails db:create"

# 5. Create migrations
`rails generate migration createPerson`
`rails generate migration createHouse`

# 6. Define the tables in the migration files, db > migrate
https://github.com/JoseMiralles/Homework/tree/master/Week_5/W5D4/Neighborhood/db/migrate

# 7. Apply migrations
- This creates empty tables in the database.

`rails db:migrate`

# 8. create models in app/models (ex: person.rb, house.rb)

- Just create them like any other ruby file:
https://github.com/JoseMiralles/Homework/tree/master/Week_5/W5D4/Neighborhood/app/models

# 9. add validation and associations in model files (person.rb, house.rb)
- Look at the files from the previous step.

### TESTING
# 1. Open console with pry within the rails app context:

`Rails c` or `Rails console`

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
