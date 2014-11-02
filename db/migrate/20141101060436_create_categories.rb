class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :product
      t.string :category_type
      t.string :category_name
      t.string :description
      t.integer :price

      t.timestamps
    end
    add_index :categories, :product_id
  end
end
