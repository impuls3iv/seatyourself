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
  phone: '5555'

)

User.create(

email: 'sally@jon.com',
username: 'sal11',
phone: '5555'

)

User.create(

email: 'mike@jon.com',
username: 'mike11',
phone: '5579'

)
