require 'rails_helper'

describe Product do
  it("has many reviews") do
    product = Product.create(name: "Pasta", grocery_category: "Italian", country_of_origin: "Italy", cost: 9)
    review1 = Review.create(author: "James Jamery", content_body: "This is pasta.  I like.", rating: "4", product_id: product.id)
    review2 = Review.create(author: "Mary Martyier", content_body: "It tastes like cardboard.", rating: "2", product_id: product.id)
    expect(product.reviews()).to(eq([review1, review2]))
  end

  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(100)}

  it("titelizes the name of the product") do
    product = Product.create({name: "ice cream", country_of_origin: "france", grocery_category: "desserts", cost: 5})
    expect(product.name()).to(eq("Ice Cream"))
  end

end
