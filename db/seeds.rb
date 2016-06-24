# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jon = User.create(
  email: 'jonny@jon.com',
  username: 'jon11',
  phone: '6472123456',
  password: 'test'

)

sal = User.create(

email: 'sally@jon.com',
username: 'sal11',
phone: '4168587777'

)

mik = User.create(

email: 'mike@jon.com',
username: 'mike11',
phone: '9057315555'

)

mcd = Restaurant.create(

  name: 'McDonalds',
  category: 'fast-food',
  price: 1,
  capacity: 50
#price levels are 1, 2, 3, 4
)

dq = Restaurant.create(

  name: 'DQ',
  category: 'fast-food',
  price: 2,
  capacity: 25
#price levels are 1, 2, 3, 4
)

subw = Restaurant.create(

  name: 'Subway',
  category: 'sandwiches',
  price: 2,
  capacity: 10
#price levels are 1, 2, 3, 4
)
#
# t.datetime :time
# t.integer :people
# t.integer :user_id
# t.integer :restaurant_id
# t.boolean :availability

Reservation.create(

  time: Time.now,
  people: 5,
  user: jon,
  restaurant: mcd,
  availability: 1

)

Reservation.create(

  time: "01/01/2012 23:59:59",
  people: 2,
  user: sal,
  restaurant: subw,
  availability: 1

)
Reservation.create(

  time: 20170621,
  people: 2,
  user: mik,
  restaurant: dq,
  availability: 1

)
Reservation.create(

  time: 20170621,
  people: 2,
  user: jon,
  restaurant: dq,
  availability: 1

)
