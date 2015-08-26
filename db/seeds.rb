# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 nico = User.create(first_name: 'Nicolas', last_name: 'Domarin', email: 'nicolas.domarin@gmail.com', username: 'nicolasdom', password: 'nicolas', role: 'admin', created_at: Time.now)

Electromenager = Category.create(label: 'Electromenager')
Informatique= Category.create(label: 'Informatique')
MaisonDéco = Category.create(label: 'Maison Déco')
TVSonHifi = Category.create(label: 'TV Son Hifi')
JeuxVidéoGaming = Category.create(label: 'Jeux vidéo Gaming')
SportLoisirs = Category.create(label: 'Sport Loisirs')


