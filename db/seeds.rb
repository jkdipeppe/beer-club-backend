# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Account.create(email: 'me@gmail.com', username: 'me', password: 'me2', cash_deposited: 0)

Member.create(name: 'Kyle', password:'beerclub', username: 'kyle')
Beer.create(member_id: 1, name: 'American Wheat Ale', brand: 'Oberon', abv: 5.8, city: 'comstock', state: 'MI')
Beer.create(member_id: 1, name: 'Harvest Wheat', brand: 'Blue Moon', abv: 5.4, city: 'Golden', state: 'CO')
