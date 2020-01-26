class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true, length: { maximum: 100 }
  validates :content_body, presence: true, length: { minimum: 50, maximum: 250 }
  validates :rating, presence: true, numericality: {less_than: 6, greater_than: 0}
  validates :product_id, presence: true
end
