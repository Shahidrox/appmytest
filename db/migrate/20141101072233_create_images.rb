class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :category

      t.timestamps
    end
    add_index :images, :category_id
  end
end
