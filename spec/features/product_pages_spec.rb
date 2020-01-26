require 'rails_helper'

describe "the add a product process" do
  before :each do
    visit products_path
    click_link 'Add new product'
    fill_in 'Name', :with => 'Yellow Cheese'
    fill_in 'Cost', :with => 6
    fill_in 'Grocery category', :with => 'dairy'
    fill_in 'Country of origin', :with => 'France'
    click_on 'Create Product'
  end

  it "adds a new product" do
    expect(page).to have_content 'Yellow Cheese'
    expect(page).to have_content 'Product successfully created.'
  end

  it "gives an error when no product info is entered" do
    visit products_path
    click_link 'Add new product'
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end

  it "edits a product" do
    click_link 'Yellow Cheese'
    click_link 'Edit'
    fill_in 'Name', :with => 'Blue Cheese'
    click_on 'Update Product'
    expect(page).to have_content "Blue Cheese"
  end

end
