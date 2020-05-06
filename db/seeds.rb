# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
  dishoom = { name: "Dishoom", address: "London", phone_number: "090", category: "vegie" }
  pizza = { name: "pizza_east", address: "Rom", phone_number: "0009", category: "italian" }
  steakhouse = { name: "Steak", address: "rom", phone_number: "090", category: "steak" }
  dubai = { name: "Dubai Castle", address: "Dubai", phone_number: "000900", category: "arabic" }
  vino = { name: "Le vino", address: "Paris", phone_number: "08890", category: "french" }

[dishoom, pizza, steakhouse, dubai, vino].each do |attributes|
  puts attributes
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"


