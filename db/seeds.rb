# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'cleaning database'
Booking.destroy_all
Car.destroy_all
User.destroy_all
puts 'database cleaned'

puts 'creating users'
toto = User.create!(
  email: 'toto@gmail.com',
  password: '123456')
moi = User.create!(
  email: 'lucile@gmail.com',
  password: '123456')
puts 'users created'

puts 'creating cars'
5.times do
  Car.create!(
    brand: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year_of_production: rand(2004..2022),
    address: Faker::Address.full_address,
    price_per_day: rand(60..120),
    user: toto
  )
end
puts 'cars created'

puts 'creating bookings'
Booking.create!(
  car: Car.last,
  user: moi,
  starts_at: Date.today,
  ends_at: Date.today + 3
)
puts 'bookings created'
