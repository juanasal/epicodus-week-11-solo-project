# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(cost: rand(100), country_of_origin: Faker::Address.country, grocery_category: Faker::Restaurant.type, name: Faker::Food.ingredient)
end

products = Product.all
product_ids = []
products.each do |product|
  product_ids.push(product.id)
end


500.times do |index|
  Review.create!(author: Faker::Name.unique.name, content_body: Faker::Restaurant.review, rating: rand(6), product_id: product_ids[rand(product_ids.length)])
end

p "Created #{Product.count} products."
p "Created #{Review.count} reviews."
