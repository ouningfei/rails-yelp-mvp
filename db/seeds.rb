# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

# restaurants = Restaurant.create([
#   { name: Faker::Restaurant.name, address: Faker::Address.city, category: 'chinese' },
#   { name: Faker::Restaurant.name, address: Faker::Address.city, category: 'italian' },
#   { name: Faker::Restaurant.name, address: Faker::Address.city, category: 'japanese' },
#   { name: Faker::Restaurant.name, address: Faker::Address.city, category: 'french' },
#   { name: Faker::Restaurant.name, address: Faker::Address.city, category: 'belgian' }
# ])

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'chinese' }
blue_label =  { name: "Blue Label", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian' }
odette =  { name: "Odette", address: "Singapore", category: 'japanese' }
madison =  { name: "11 Madison Park", address: "11 Madison Park NYC", category: 'french' }
shake =  { name: "Shake Shack", address: "Shoreditch", category: 'belgian' }

[ dishoom, blue_label, odette, madison, shake ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"