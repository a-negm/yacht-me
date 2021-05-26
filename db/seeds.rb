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

User.create(first_name: "David", last_name: "Smith", username: 'dsmith', address: "53 Manchester Ave, Manchester", date_of_birth: "1964-12-24" )


Yacht.create(name: "HMS Eccles",
     yacht_type: "sail-yacht",
     length: 60,
     number_of_cabins: 4,
     rental_price: 200,
     description: "Beautiful yacht based in the French Riveria. Best used in the summer.",
     url: "https://images.unsplash.com/photo-1603377817563-5ccd33e57d05?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1669&q=80",
     user_id: 1,
     guests: 2)



Yacht.create(name: "The Marquess",
     yacht_type: "sail-yacht",
     length: 50,
     number_of_cabins: 4,
     rental_price: 400,
     url: "https://images.unsplash.com/photo-1503634192480-e77a6436f075?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80",
     description: "A classic boat anchored at Southampton. A vintage yacht designed for the enterprising individual.",
     user_id: 1,
     guests: 2)


Yacht.create(name: "The Dukesberry",
     yacht_type: "sail-yacht",
     length: 70,
     number_of_cabins: 12,
     rental_price: 100,
     url: "https://images.unsplash.com/photo-1572234601310-1ce8f3316141?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80",
     description: "A modern examplar of the finest yacht craftsmanship.",
     user_id: 1,
     guests: 2)


Yacht.create(name: "Trump Princess",
     yacht_type: "mega-yacht",
     length: 86,
     number_of_cabins: 11,
     rental_price: 40000,
     description: "Outfitted in marble and gold (and a master bedroom ceiling made of endangered tortoise shell), and equipped with such amenities as a helipad, a disco, and a movie theater.",
     user_id: 1,
     guests: 22,
     url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.l9OQpruu1v_5nCmY8ZVpqQHaE8%26pid%3DApi&f=1")
Yacht.create(name: "Vajoliroja",
     yacht_type: "sailing-yacht",
     length: 46,
     number_of_cabins: 5,
     rental_price: 13000,
     description: "The name "Vajoliroja" comes from a combination of names in the Depp family: "Va" for Vanessa Paradis his girlfriend, "jo" for Johnny's own name, "liro" after Depp's daughter Lily Rose, and "ja" for Depp's son Jack.",
     user_id: 1,
     guests: 12,
     url: "https://cdn.architecturendesign.net/wp-content/uploads/2015/08/01-AD-Vajoliroja-Johnny-Depp-Yacht.jpg")
Yacht.create(name: "Venus",
     yacht_type: "luxury-yacht",
     length: 60,
     number_of_cabins: 8,
     rental_price: 20000,
     description: "The yacht is built with glass features inspired by the Apple store designs, and it includes six bedrooms with a top-of-the-line electronic communication system to facilitate communication throughout the ship. The ship is run by a group of 27-inch iMac computers located in the wheel house.",
     user_id: 1,
     guests: 18,
     url: "https://cdn.architecturendesign.net/wp-content/uploads/2015/08/04-AD-Venus-Steve-Jobs-Yacht.jpg")
