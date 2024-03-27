# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'faker'

puts "Destroying the precedent seeds..."
Restaurant.destroy_all
User.destroy_all

puts "Creation of users"
vasiliki = User.create!(email: "vasiliki@mail.com", password: "deliveroo", username: "vasiliki", avatar_url: "https://media.licdn.com/dms/image/C5603AQFtIc1Ql1g1pQ/profile-displayphoto-shrink_200_200/0/1599645006945?e=2147483647&v=beta&t=dmqu_MWfP-jdTneJLrFXMxrBYWqB_oo04nBFYJ-rZR0")

puts "Creation of restaurants"
20.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    specialty_cuisine: Faker::Food.ethnic_category
  )
  restaurant.save!
end
puts 'Finished!'
