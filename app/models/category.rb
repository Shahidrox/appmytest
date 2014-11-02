class Category < ActiveRecord::Base
  belongs_to :product
  attr_accessible :product_id, :category_name, :category_type, :description, :price
end
