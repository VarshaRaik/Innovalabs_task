# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
user = User.create(email: 'test@example.com', password: 'demo')
user.posts.create(title: 'First Post', content: 'This is the content of the first post')
user.posts.create(title: 'Second Post', content: 'This is the content of the second post')
