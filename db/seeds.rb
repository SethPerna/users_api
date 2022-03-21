# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
user_1 = User.create!(first_name: "Seth", last_name: "Perna", phone_number: "1(540)-347-1234", email: "gseth2623864@gmail.com")
user_2 = User.create!(first_name: "Seth", last_name: "Perna", phone_number: "1(540)-347-2345", email: "gseth261241@gmail.com")
user_3 = User.create!(first_name: "Seth", last_name: "Perna", phone_number: "1(540)-347-6785", email: "gseth266566@gmail.com")
user_4 = User.create!(first_name: "Seth", last_name: "Perna", phone_number: "1(540)-347-9357", email: "gseth2663245@gmail.com")
user_5 = User.create!(first_name: "Seth", last_name: "Perna", phone_number: "1(540)-347-2137", email: "gseth262352@gmail.com")
