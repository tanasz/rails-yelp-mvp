# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "faker"
Restaurant.destroy_all
Review.destroy_all

50.times do
  resto = Restaurant.create(
    name: Faker::StarWars.droid,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  rand(3..25).times do
    resto.reviews.create(
      content: Faker::StarWars.quote,
      rating: rand(1..5)
    )
  end
end
