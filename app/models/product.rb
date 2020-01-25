class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence:true
  validates_length_of :name, maximum: 100
  before_save(:titelize_product)

  private
    def titelize_product
      self.name = self.name.titleize
      self.country_of_origin = self.country_of_origin.titleize
      self.grocery_category = grocery_category.titleize
    end
end
