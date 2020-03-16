# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all

flat1 = Flat.create([{ title: 'Le Wagon HQ' }, { description: 'super logement sous verrière' }, { location: '16, villa Gaudelet, Paris' }, { traveler: '6' }])
puts "flat create!"
flat1 = Flat.create([{ title: 'Dada la coloc' }, { description: 'T2 lumineux et spacieux en plein centre de Paris' }, { location: '7, avenue de la République, Paris' }, { traveler: '5' }])
puts "flat create!"
