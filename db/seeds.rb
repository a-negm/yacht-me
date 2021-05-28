# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'httparty'
require 'open-uri'

def new_photo
  base_url = "https://api.unsplash.com/photos/random?client_id=#{ENV['UNSPLASH_KEY']}&query=yacht&orientation=landscape"
  response = HTTParty.get(base_url, format: :plain)
  puts response
  results = JSON.parse response, symbolize_names: true

  yacht_photo = results[:urls][:full]
end

p 'destroying records'
User.destroy_all
Yacht.destroy_all
Booking.destroy_all


p 'creating user'

user = User.create!(first_name: "David", last_name: "Smith", username: 'dsmith', address: "53 Manchester Ave, Manchester", date_of_birth: "1964-12-24", email: "dsmith@gmail.com", password: 123456 )

p 'creating yachts'

Yacht.create(name: "HMS Eccles",
     yacht_type: "sail-yacht",
     length: 60,
     number_of_cabins: 4,
     rental_price: 200,
     description: "Beautiful yacht based in the French Riveria. Best used in the summer.",
     user_id: user.id,
     location: "Edificio 1501, Av Arnulfo Arias Madrid, Panamá, Panama",
     guests: 2)

Yacht.create!(name: "HMS Eccles",
    yacht_type: "sail-yacht",
    length: 60,
    number_of_cabins: 4,
    rental_price: 200,
    description: "Beautiful yacht based in the French Riveria. Best used in the summer.",
    location: "Edificio 1501, Av Arnulfo Arias Madrid, Panamá, Panama",
    user_id: user.id,
    guests: 2).photo.attach(io: URI.open(new_photo), filename: 'blabla.jpg', content_type: 'image/png' )


Yacht.create(name: "The Marquess",
  yacht_type: "sail-yacht",
  length: 50,
  number_of_cabins: 4,
  rental_price: 400,
  description: "A classic boat anchored at Southampton. A vintage yacht designed for the enterprising individual.",
  location: "Honey Harbour",
  user_id: user.id,
  guests: 2).photo.attach(io: URI.open(new_photo), filename: 'blabla.jpg', content_type: 'image/png' )


Yacht.create(name: "The Dukesberry",
  yacht_type: "sail-yacht",
  length: 70,
  number_of_cabins: 12,
  rental_price: 100,
  description: "A modern examplar of the finest yacht craftsmanship.",
  location: "Island Harbour, Neufundland und Labrador, Kanada",
  user_id: user.id,
  guests: 2).photo.attach(io: URI.open(new_photo), filename: 'blabla.jpg', content_type: 'image/png' )


Yacht.create(name: "Trump Princess",
  yacht_type: "mega-yacht",
  length: 86,
  number_of_cabins: 11,
  rental_price: 40000,
  description: "Outfitted in marble and gold (and a master bedroom ceiling made of endangered tortoise shell), and equipped with such amenities as a helipad, a disco, and a movie theater.",
  user_id: user.id,
  guests: 22,
  location: "Island Harbour, Neufundland und Labrador, Kanada").photo.attach(io: URI.open(new_photo), filename: 'blabla.jpg', content_type: 'image/png' )

Yacht.create(name: "Vajoliroja",
  yacht_type: "sailing-yacht",
  length: 46,
  number_of_cabins: 5,
  rental_price: 13000,
  description: "The name 'Vajoliroja' comes from a combination of names in the Depp family: 'Va' for Vanessa Paradis his girlfriend, 'jo' for Johnny's own name, 'liro' after Depp's daughter Lily Rose, and 'ja' for Depp's son Jack.",
  user_id: user.id,
  guests: 12,
  location: "Antarktika").photo.attach(io: URI.open(new_photo), filename: 'blabla.jpg', content_type: 'image/png' )

Yacht.create(name: "Venus",
  yacht_type: "luxury-yacht",
  length: 60,
  number_of_cabins: 8,
  rental_price: 20000,
  description: "The yacht is built with glass features inspired by the Apple store designs, and it includes six bedrooms with a top-of-the-line electronic communication system to facilitate communication throughout the ship. The ship is run by a group of 27-inch iMac computers located in the wheel house.",
  user_id: user.id,
  guests: 18,
  location: "Ewa Beach").photo.attach(io: URI.open(new_photo), filename: 'blabla.jpg', content_type: 'image/png' )

Yacht.create(name: "Trump Princess",
     yacht_type: "mega-yacht",
     length: 86,
     number_of_cabins: 11,
     rental_price: 40000,
     description: "Outfitted in marble and gold (and a master bedroom ceiling made of endangered tortoise shell), and equipped with such amenities as a helipad, a disco, and a movie theater.",
     user_id: user.id,
     guests: 22,
     location: "Island Harbour, Neufundland und Labrador, Kanada")

Yacht.create(name: "Vajoliroja",
     yacht_type: "sailing-yacht",
     length: 46,
     number_of_cabins: 5,
     rental_price: 13000,
     description: "The name 'Vajoliroja' comes from a combination of names in the Depp family: 'Va' for Vanessa Paradis his girlfriend, 'jo' for Johnny's own name, 'liro' after Depp's daughter Lily Rose, and 'ja' for Depp's son Jack.",
     user_id: user.id,
     guests: 12,
     location: "Antarktika")

Yacht.create(name: "Venus",
     yacht_type: "luxury-yacht",
     length: 60,
     number_of_cabins: 8,
     rental_price: 20000,
     description: "The yacht is built with glass features inspired by the Apple store designs, and it includes six bedrooms with a top-of-the-line electronic communication system to facilitate communication throughout the ship. The ship is run by a group of 27-inch iMac computers located in the wheel house.",
     user_id: user.id,
     guests: 18,
     location: "Ewa Beach")


p "#{Yacht.count} yachts were created"
