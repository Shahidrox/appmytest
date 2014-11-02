class Product < ActiveRecord::Base
  attr_accessible :product_counts, :product_name
  has_many :category
end
