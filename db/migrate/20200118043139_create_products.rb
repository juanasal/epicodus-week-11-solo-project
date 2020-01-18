class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.decimal :cost
      t.string :country_of_origin
      t.string :grocery_category
      t.string :name

      t.timestamps()
    end
  end
end
