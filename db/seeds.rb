# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Deseeding DB"
Booking.destroy_all
Doll.destroy_all
User.destroy_all

puts "Seeding DB"
user1 = User.create!(first_name: "Pedro", last_name: "Ferreira", email: "pedro@dolls.com", password: "ilovedolls")
user2 = User.create!(first_name: "Leith", last_name: "Atia", email: "leith@dolls.com", password: "ilovedolls")
user3 = User.create!(first_name: "Will", last_name: "May", email: "may@dolls.com", password: "ilovedolls")

Doll.create!(name: "Annabelle", condition: "poor", image: "https://res.cloudinary.com/dug5dmhjs/image/upload/v1661340401/production/annabelle_wyacea.jpg", description: "Slightly cursed. She's never where you expect her to be. Bad breath.  Doesn't like cats and cats don't like her. Apart from that, i think you'll be fine.", cursed: true, user_id: user1.id)
Doll.create!(name: "Chucky", condition: "good", image: "https://res.cloudinary.com/dug5dmhjs/image/upload/v1661340401/production/chucky_byga0s.jpg", description: "Perfect for a night of terror and pure horror. Not for the feint hearted.",cursed: true, user_id: user1.id)
Doll.create!(name: "Barbie", condition: "good", image: "https://res.cloudinary.com/dug5dmhjs/image/upload/v1661340401/production/barbie_yh9z5r.jpg", description: "A classic. You'll rest well with her around, possibly.", cursed: false, user_id: user2.id)
Doll.create!(name: "Fiona", condition: "good", image: "https://res.cloudinary.com/dug5dmhjs/image/upload/v1661340401/production/doll_l79gta.jpg", description: "A friendly, well rounded doll.", cursed: false, user_id: user2.id)
Doll.create!(name: "Maggie", condition: "poor", image: "https://res.cloudinary.com/dug5dmhjs/image/upload/v1661340401/production/creepy_doll_mug1gs.jpg", description: "Never, ever turn your back on Maggie. You'll never close both your eyes with her around.", cursed: true, user_id: user2.id)
Doll.create!(name: "Joey", condition: "good", image: "https://res.cloudinary.com/dug5dmhjs/image/upload/v1661282164/production/doll_bg_coxdrr.png", description: "Joey, a new born doll. Perfect if you're thinking about having children although, unlike real kids, he won't make a mess.", cursed: false, user_id: user2.id)

puts "finished"
