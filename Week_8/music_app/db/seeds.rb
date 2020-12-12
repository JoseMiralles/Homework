# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Band.destroy_all

User.create!({email:"jose@jose.com", password:"jose1234"})
User.create!({email:"test@test.com", password:"test12345"})

(1..10).each do |i|
    Band.create(name: "Despacito man ##{i}")
end