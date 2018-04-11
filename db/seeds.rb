# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Example User",
             email: "me@me.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

User.create(name: "Cindy McWilliams",
email: "cindy@gmail.com",
password: "cindy",
password_confirmation: "cindy")

User.create(name: "Francie Ramon",
  email: "frances.ramon@gmail.com",
  password: "francie",
  password_confirmation: "francie")

User.create(name: "Neal Shively",
  email: "neal@gmail.com",
  password: "neal",
  password_confirmation: "neal")

# 5.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(name:  name,
#                email: email,
#                password:              password,
#                password_confirmation: password)
# end

