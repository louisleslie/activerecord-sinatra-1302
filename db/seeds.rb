
require 'faker'

puts "Creating Restaurants"
10.times do
  p Faker::Restaurant.name
  r = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    rating: rand(0..5)
  )
  puts "Created #{r.name}"
end
puts "Done!"
