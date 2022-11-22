# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: 'alex@mail.com', encrypted_password: 'azerty', username: 'Alex', bio: 'Coach de foot', experience: 3);
User.create(email: 'farnci@mail.com', encrypted_password: 'azerty', username: 'Franci', bio: 'Coach de running', experience: 5);
User.create(email: 'sophie@mail.com', encrypted_password: 'azerty', username: 'Sophie');
User.create(email: 'vannesa@mail.com', encrypted_password: 'azerty', username: 'Vannesa');
Offer.create(name: 'Escalade pour les debutants', sport: 'Escalade', price: 25, user_id: 1)
Offer.create(name: 'Escalade pour les experimentes', sport: 'Escalade', price: 55, user_id: 2)
Offer.create(name: 'Running pour les debutants', sport: 'Running', price: 25, user_id: 1)
Offer.create(name: 'Tennis pour les debutants', sport: 'Tennis', price: 35, user_id: 2)
Session.create(date: '01/12/2022', user_id: 1, offer_id: 2)
Session.create(date: '25/12/2022', user_id: 2, offer_id: 2)
