# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

sports = ["Football", "Tennis", "Basketball", "Cricket", "Table Tennis", "Squash", "Badminton", "Paddel", "Golf", "Volleyball"]

puts "creating 5 users and 50 pitches"
5.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "123456789"
  )

  2.times do
    pitch = Pitch.new(
      name: "#{Faker::Games::Heroes.name}'s Venue",
      sport: sports.sample,
      address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
      user: user
    )
      # pitch.user = user
      pitch.save
  end
end
puts 'Finished!'
