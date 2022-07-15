# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(email: 'john@example.com', password: 123456)

hobbit_book = Item.create(name: 'Hobbit', category: 'Book', quantity: 9999)
sw_movie = Item.create(name: 'Star Wars Ep III', category: 'Movie', quantity: 9999)
