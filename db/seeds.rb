# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SPECIES = %w(dog cat bird unicorn rabbit turtle)
20.times do
  Pet.create(
    name: Faker::Creature::Animal.name,
    address: Faker::Address.street_address,
    species: SPECIES[rand(0..4)],
    found_on: Faker::Date.between(from: '2016-09-23', to: '1024-09-25')
  )
end
