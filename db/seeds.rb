# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Flat.destroy_all



user1 = User.create([{ email: 'lala@nomail.com' }])
user2 = User.create([{ email: 'coucou@nomail.com' }])


file1 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584362985/aflkm7psoqdmufmdrkwz.jpg")
file2 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584362981/lyiigsakjzebitlhu3fv.jpg")
flat1 = Flat.new(title: 'Dada la coloc', description: 'T2 lumineux et spacieux en plein centre de Paris', location: '7, avenue de la République, Paris', traveler: '5')
flat1.photos.attach([{io: file1, filename: " ", content_type: 'image/jpg'}, {io: file2, filename: " ", content_type: 'image/jpg'}])
flat1.save!
puts "flat1 create!"

file3 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584362963/dy6mlu5c3fexhacmrxmn.jpg")
file4 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584362972/vvb0nubnlhm3ebwmeedm.jpg")
flat2 = Flat.new(title: 'Le Wagon HQ', description: 'Super logement sous verrière', location: '16, villa Gaudelet, Paris', traveler: '5')
flat2.photos.attach([{io: file3, filename: " ", content_type: 'image/jpg'}, {io: file4, filename: " ", content_type: 'image/jpg'}])
flat2.save!
puts "flat2 create!"
