# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Band.destroy_all

users = User.create!([
    {email: "test@email.com", password: "password1234"},
    {email: "test_2@email.com", password: "mypassword"},
    {email: "pizzaman@pizzafans.com", password: "pizzaTime"},
])

Band.create!({name: "Despacito Man"})
(2..10).each do |i|
    name = "Despacito Man "
    name += i.to_s
    Band.create!({name: name})
end