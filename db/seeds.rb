# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

joeys = Restaurant.create(name: "Joeys", user_id: 1, neighbourhood: "Yonge and Dundas", address: "123 Yonge Street", cuisine_type: "American", opens: 11, closes: 23, capacity: 200)

cactus_club = Restaurant.create(name: "Cactus Club", user_id: 2, neighbourhood: "Financial District", address: "123 King Street West", cuisine_type: "Asian/American", opens: 12, closes: 23, capacity: 100)
