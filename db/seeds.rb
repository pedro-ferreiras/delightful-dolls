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
user1 = User.create!(first_name: "Pedro", last_name: "Ferreira", email: "pedro@dolls.com", password: "ilovedolls")
user2 = User.create!(first_name: "Leith", last_name: "Atia", email: "leith@dolls.com", password: "ilovedolls")
user3 = User.create!(first_name: "Will", last_name: "May", email: "may@dolls.com", password: "ilovedolls")

Doll.create!(name: "Annabelle", condition: "poor", cursed: true, user_id: user1.id)
Doll.create!(name: "Chucky", condition: "good", cursed: true, user_id: user1.id)
Doll.create!(name: "Barbie", condition: "good", cursed: false, user_id: user2.id)

puts "finished"
