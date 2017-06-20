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
        opens: 11, closes: 23, capacity: 200, owner_id: 1,
        description: "Upscale casual, downtown Toronto. The first JOEY to hit the streets of downtown Toronto. Located just off Yonge on Dundas, this place is a work of art - exposed brick walls, open-air dining, crazy custom lighting and the Enomatic wine system. We could go on, but you should come and see it for yourself.",
        menu: "http://joeyrestaurants.com/menu/#!/restaurant/404/our-food",
        price_range: "$$$",
        image: "http://gvrpix.com/wp-content/uploads/2012/11/DSC7983.jpg"

        )

cactus_club = Restaurant.create(
        name: "Cactus Club",
        neighbourhood: "Financial District",
        address: "123 King Street West",
        cuisine_type: "Asian/American",
        opens: 12, closes: 23, capacity: 100, owner_id: 2,
        description: "Located in the downtown core at First Canadian Place, our Eastern Flagship location boasts re-imagined menu items and elevated design.",
        menu: "https://www.cactusclubcafe.com/menus/",
        price_range: "$$$$",
        image: "https://www.cactusclubcafe.com/content/uploads/2016/05/111915_FullBleedImage_TORO_Locations_Header_1160px_500px_web_v1_NoText.jpg"

        )
