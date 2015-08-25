# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 nico = User.create(first_name: 'Nicolas', last_name: 'Domarin', email: 'nicolas.domarin@gmail.com', username: 'nicolasdom', password: 'nicolas', role: 'admin', created_at: Time.now)
