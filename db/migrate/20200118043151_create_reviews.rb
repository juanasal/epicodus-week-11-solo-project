class CreateReviews < ActiveRecord::Migration[5.2]
  # validates_length_of :rating, in: 0..5, allow_nil: false, allow_blank: false
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :content_body
      t.integer :rating
      t.integer :product_id

      t.timestamps()
    end
  end
end
