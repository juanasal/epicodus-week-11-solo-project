class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true, length: { maximum: 100 }
  validates :content_body, presence: true, length: { minimum: 50, maximum: 250 }
  validates :rating, presence: true
  validates :product_id, presence: true
end
