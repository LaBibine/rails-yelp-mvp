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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french"}
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "french" }
steack_house = { name: "Steack House", address: "1 Av. de Lille, 59000 Lomme", category: "french"}
crazy_piano = { name: "Crazy Piano", address: "Strandweg 21, 2586 JK Den Haag, Pays-Bas", category: "french"}
sushi_shop = { name: "Sushi Shop", address: "26-28 Place Louise de Bettignies, 59000 Lille", category: "french"}

[dishoom, pizza_east, steack_house, crazy_piano, sushi_shop].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"