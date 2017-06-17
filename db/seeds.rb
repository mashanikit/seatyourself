# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
matty = User.create(
        name: "Ultron",
        phone_number: '123-890-1230',
        email: "killemall@me.com",
        password: "password",
        password_confirmation: "password"
        )
michael = User.create(
        name: "Michael Bay",
        phone_number: '0987892673',
        email: "explosions@me.com",
        password: "password",
        password_confirmation: "password"
        )
joeys = Restaurant.create(
        name: "Joeys",
        neighbourhood: "Yonge and Dundas",
        address: "123 Yonge Street",
        cuisine_type: "American",
        opens: 11, closes: 23, capacity: 200, owner_id: 1
        )

cactus_club = Restaurant.create(
        name: "Cactus Club",
        neighbourhood: "Financial District",
        address: "123 King Street West",
        cuisine_type: "Asian/American",
        opens: 12, closes: 23, capacity: 100, owner_id: 2
        )
