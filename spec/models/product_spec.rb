require 'rails_helper'

describe Product do
  it("has many reviews") do
    product = Product.create(name: "Pasta", grocery_category: "Italian", country_of_origin: "Italy", cost: 9)
    review1 = Review.create(author: "James Jamery", content_body: "This is pasta.  I like.", rating: "4", product_id: product.id)
    review2 = Review.create(author: "Mary Martyier", content_body: "It tastes like cardboard.", rating: "2", product_id: product.id)
    expect(product.reviews()).to(eq([review1, review2]))
  end

  it { should have_many(:reviews) }

end
