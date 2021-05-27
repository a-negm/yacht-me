# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Yacht.destroy_all
Booking.destroy_all

User.create(first_name: "David", last_name: "Smith", username: 'dsmith', address: "53 Manchester Ave, Manchester", date_of_birth: "1964-12-24", email: "dsmith@gmail.com", password: 123456 )
User.create(first_name: "Soto", last_name: "Dim", username: 'Soto', address: "53 Manchester Ave, Manchester", date_of_birth: "1964-12-24", email: "soto@gmail.com", password: 111111 )

User.create(first_name: "Dave", last_name: "Bob", username: 'Dbob', address: "54 Hey Ave, Manchester", date_of_birth: "1965-12-24", email: "dbob@gmail.com", password: 123456 )

Yacht.create(name: "HMS Eccles",
     yacht_type: "sail-yacht",
     length: 60,
     number_of_cabins: 4,
     rental_price: 200,
     description: "Beautiful yacht based in the French Riveria. Best used in the summer.",
     user_id: 1,
     location: "Edificio 1501, Av Arnulfo Arias Madrid, Panamá, Panama",
     guests: 2)



Yacht.create(name: "The Marquess",
     yacht_type: "sail-yacht",
     length: 50,
     number_of_cabins: 4,
     rental_price: 400,
     description: "A classic boat anchored at Southampton. A vintage yacht designed for the enterprising individual.",

     user_id: 2,

     user_id: 1,

     location: "Honey Harbour",
     guests: 2)


Yacht.create(name: "The Dukesberry",
     yacht_type: "sail-yacht",
     length: 70,
     number_of_cabins: 12,
     rental_price: 100,
     description: "A modern examplar of the finest yacht craftsmanship.",
     user_id: 1,
     location: "Island Harbour, Neufundland und Labrador, Kanada",
     guests: 2)


Yacht.create(name: "Trump Princess",
     yacht_type: "mega-yacht",
     length: 86,
     number_of_cabins: 11,
     rental_price: 40000,
     description: "Outfitted in marble and gold (and a master bedroom ceiling made of endangered tortoise shell), and equipped with such amenities as a helipad, a disco, and a movie theater.",
     user_id: 1,
     guests: 22,
     location: "Island Harbour, Neufundland und Labrador, Kanada")

Yacht.create(name: "Vajoliroja",
     yacht_type: "sailing-yacht",
     length: 46,
     number_of_cabins: 5,
     rental_price: 13000,
     description: "The name 'Vajoliroja' comes from a combination of names in the Depp family: 'Va' for Vanessa Paradis his girlfriend, 'jo' for Johnny's own name, 'liro' after Depp's daughter Lily Rose, and 'ja' for Depp's son Jack.",
     user_id: 2,
     user_id: 1,
     guests: 12,
     location: "Antarktika")

Yacht.create(name: "Venus",
     yacht_type: "luxury-yacht",
     length: 60,
     number_of_cabins: 8,
     rental_price: 20000,
     description: "The yacht is built with glass features inspired by the Apple store designs, and it includes six bedrooms with a top-of-the-line electronic communication system to facilitate communication throughout the ship. The ship is run by a group of 27-inch iMac computers located in the wheel house.",
     user_id: 1,
     guests: 18,
     location: "Ewa Beach")

