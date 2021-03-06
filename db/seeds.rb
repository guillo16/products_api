# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Clearing database"

Product.destroy_all

puts "Creating products"

20.times do
  Product.create! title: Faker::Commerce.product_name,
                  description: Faker::Quote.famous_last_words,
                  photo: "url",
                  price: Faker::Number.number(digits: 4)
end
