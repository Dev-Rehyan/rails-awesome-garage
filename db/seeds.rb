# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleaning database..."

Car.destroy_all
Owner.destroy_all

puts "creating owners..."

owner1 = Owner.create!(nickname: "Shayne")
owner2 = Owner.create!(nickname: "Rehyan")
owner3 = Owner.create!(nickname: "Alyssa")
owner4 = Owner.create!(nickname: "Jen")

puts "creating cars..."

Car.create!(brand: "Toyota", model: "Corolla", fuel: "petrol", year: 2010, owner: owner1)
Car.create!(brand: "Ford", model: "Focus", fuel: "diesel", year: 2020, owner: owner2)
Car.create!(brand: "Nissan", model: "gtr", fuel: "petrol", year: 1999, owner: owner3)
Car.create!(brand: "Audi", model: "TT", fuel: "diesel", year: 2013, owner: owner4)

puts "done! #{Owner.count} owners and #{Car.count} cars created."
