# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Deseeding DB"
User.delete_all
Booking.delete_all
Doll.delete_all

puts "Seeding DB"
User.create!(first_name: "Pedro", last_name: "Ferreira", email: "pedro@dolls.com", password: "ilovedolls")
User.create!(first_name: "Leith", last_name: "Atia", email: "leith@dolls.com", password: "ilovedolls")
User.create!(first_name: "Will", last_name: "May", email: "may@dolls.com", password: "ilovedolls")

# Doll.create!(name: "Annabelle", condition: "poor", cursed: true)
