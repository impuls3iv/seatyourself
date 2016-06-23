# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(

  email: 'jonny@jon.com',
  username: 'jon11',
  phone: '6472123456',
  password: 'test'

)

User.create(

email: 'sally@jon.com',
username: 'sal11',
phone: '4168587777'

)

User.create(

email: 'mike@jon.com',
username: 'mike11',
phone: '9057315555'

)

Restaurant.create(

  name: 'McDonalds',
  category: 'fast-food',
  price: 1,
  capacity: 50
#price levels are 1, 2, 3, 4
)

Restaurant.create(

  name: 'DQ',
  category: 'fast-food',
  price: 2,
  capacity: 25
#price levels are 1, 2, 3, 4
)

Restaurant.create(

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

  time: 20160621,
  people: 5,
  user_id: 13,
  restaurant_id: 1,
  availability: 1

)

Reservation.create(

  time: 20170621,
  people: 2,
  user_id: 13,
  restaurant_id: 2,
  availability: 1

)
