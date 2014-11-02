class Image < ActiveRecord::Base
  belongs_to :category
  attr_accessible :product_image, :category_id, :product_image_file_name
  #has_attached_file :product_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
   has_attached_file :product_image, 
   :styles => { :medium => "300x300>", :thumb => "100x100>" },
   :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
   :url => "/system/:attachment/:id/:style/:filename"
end
