# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Admin User
user = User.create! :name => 'Test User', :email => 'test@test.com', :password => '11111111', :password_confirmation => '11111111'
user.toggle!(:admin)
puts 'SETTING UP DEFAULT USER LOGIN'

# Products
Product.create([{:product_name => 'Clothing', :product_counts => "30"}])
Product.create([{:product_name => 'Electronics', :product_counts => "50"}])
Product.create([{:product_name => 'Clocks', :product_counts => "12"}])
puts 'SETTING UP DEFAULT PRODUCTS'

# Category
Category.create([{:product_id => '1',:category_type => 'Men',:category_name =>'Age Of Wisdom Tan Graphic Tee',:description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut, minima!',:price => '122.51'}])
Category.create([{:product_id => '1',:category_type => 'Women',:category_name =>'Women Kurti',:description => 'Rain & Rainbow Casual Half Sleeve Printed Womens Kurti',:price => '932'}])
Category.create([{:product_id => '1',:category_type => 'Kids',:category_name =>'Neck T-Shirt',:description => 'United Colors of Benetton Printed Boys Round Neck T-Shirt',:price => '419'}])

Category.create([{:product_id => '2',:category_type => 'Mobile',:category_name =>'Karbonn Titanium S2 Plus(White)',:description => '1 year manufacturer warranty for Phone and 6 months warranty for in the box accessories',:price => '5499'}])
Category.create([{:product_id => '2',:category_type => 'Tablet',:category_name =>'Digiflip Pro XT811 Tablet',:description => '1 year manufacturer warranty for Phone and 6 months warranty for in the box accessories',:price => '9999'}])
Category.create([{:product_id => '2',:category_type => 'Laptops',:category_name =>'Lenovo B4030 Notebook',:description => 'Lenovo B4030 Notebook (4th Gen CDC/ 2GB/ 500GB/ Win8.1) (59-425891)(Black)',:price => '21010'}])

Category.create([{:product_id => '3',:category_type => 'Wall Clocks',:category_name =>'Analog Wall Clock',:description => 'Rhythm CMG425BR06 Analog Wall Clock(Brown)',:price => '2277'}])
Category.create([{:product_id => '3',:category_type => 'Table Clocks',:category_name =>'Table with Peocock Analog Clock',:description => 'eCraftIndia Colorful Stone Studded Marble Table with Peocock Analog Clock',:price => '773'}])
Category.create([{:product_id => '3',:category_type => 'Watches',:category_name =>'Puma Analog Watch',:description => 'Puma Analog Watch - For Women, Men(White)',:price => '2695'}])
puts 'SETTING UP DEFAULT CATEGORY'

# Add Image
Image.create([{:category_id => '1',:product_image_file_name => '/assets/images/products/men.jpg'}])
Image.create([{:category_id => '2',:product_image_file_name => '/assets/images/products/women.jpeg'}])
Image.create([{:category_id => '3',:product_image_file_name => '/assets/images/products/kids.jpeg'}])
Image.create([{:category_id => '4',:product_image_file_name => '/assets/images/products/mobile.jpeg'}])
Image.create([{:category_id => '5',:product_image_file_name => '/assets/images/products/tablet.jpeg'}])
Image.create([{:category_id => '6',:product_image_file_name => '/assets/images/products/laptops.jpeg'}])
Image.create([{:category_id => '7',:product_image_file_name => '/assets/images/products/wall_clocks.jpeg'}])
Image.create([{:category_id => '8',:product_image_file_name => '/assets/images/products/table_clocks.jpeg'}])
Image.create([{:category_id => '9',:product_image_file_name => '/assets/images/products/watches.jpeg'}])
puts 'SETTING UP DEFAULT IMAGES'