# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ronen = User.create(name: 'Ronen Annason', phone_number: '555-555-5555', email: 'ronen@gmail.com')

joeys = Restaurant.create(name: 'Joeys', user_id: :params[id], neighbourhood: "Yonge & Dundas", address: "234 Yonge Street", cuisine_type: 'American')
