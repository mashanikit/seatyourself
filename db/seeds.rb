# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(
name: "Anna Bekket",
phone_number: "(416) 592-3991",
email: "AnnyB@arrrhoo.com"
)
User.create(
name: "Roger Parks",
phone_number: "(905) 692-5420",
email: "ParksParks@parkinglot.com"
)
Restaurant.create(
name: "Gary's Grill",
neighbourhood: "North York",
address: "320 king str W",
cuisine_type: "Indian",
user_id: 1
)
Reservation.create(
size: 4,
date: 7.days,
time: 18,
user_id: 2,
restaurant_id: 1
)
