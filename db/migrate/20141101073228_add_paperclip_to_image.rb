class AddPaperclipToImage < ActiveRecord::Migration
  def self.up
    add_attachment :images, :product_image
  end

  def self.down
    remove_attachment :images, :product_image
  end
end
