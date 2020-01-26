class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :cost, presence:true
  validates :country_of_origin, presence:true, length: { maximum: 100}
  validates :grocery_category, presence:true, length: { maximum: 100}
  validates :name, presence:true, length: { maximum: 100}
  before_save(:titelize_product)

  private
    def titelize_product
      self.name = self.name.titleize
      self.country_of_origin = self.country_of_origin.titleize
      self.grocery_category = self.grocery_category.titleize
    end
end
