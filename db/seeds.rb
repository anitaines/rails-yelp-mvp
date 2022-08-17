# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
zeppelin = {name: "Zeppelin",
          address: "Calle 123, San Fer",
          phone_number: "4744 5577",
          category: "chinese"}

bar_sport = {name: "Bar Sport",
            address: "Calle 987, San Fer",
            category: "italian"}

dashi = {name: "Dashi",
            address: "Calle 777",
            phone_number: "4744 7777",
            category: "japanese"}

cortaderas = {name: "Las Cortaderas",
            address: "Calle 666, Florida",
            category: "french"}

dogg = {name: "Dogg",
            address: "Calle 333",
            phone_number: "4744 4444",
            category: "belgian"}

[zeppelin, bar_sport, dashi, cortaderas, dogg].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
