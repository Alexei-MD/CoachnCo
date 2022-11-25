# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'cleaning db'
Session.destroy_all
Offer.destroy_all
User.destroy_all
puts 'creating users'
User.create!(email: 'alex@mail.com', password: 'azerty', username: 'Alex');
User.create!(email: 'franci@mail.com', password: 'azerty', username: 'Franci', bio: 'Je suis coach depuis 15 ans, j"ai fait 5 marathons, notamment le marathon de New-York', experience: 5);
User.create!(email: 'sophie@mail.com', password: 'azerty', username: 'Sophie', bio: 'Coache d"escalade et passionnée d"aventures et de sensations fortes', experience: 5);
User.create!(email: 'vanessa@mail.com', password: 'azerty', username: 'Vanessa');

puts 'all id good !'
