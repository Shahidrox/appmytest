class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :product_counts

      t.timestamps
    end
    add_index :products, :product_name, :unique => true
  end
end
