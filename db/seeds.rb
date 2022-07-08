# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "john@example.com", password: '123456')
User.create(email: "adam@example.com", password: '123456')
User.create(email: "gerard@example.com", password: '123456')

TodoItem.create(description: "Clean dishes", cc_id: 2, creator_id: 1, status: false)
TodoItem.create(description: "Learn to code", cc_id: 3, creator_id: 1, status: false)
TodoItem.create(description: "Read a book", cc_id: 2, creator_id: 1, status: false)
