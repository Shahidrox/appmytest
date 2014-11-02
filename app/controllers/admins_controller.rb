class AdminsController < ApplicationController
  before_filter :ensure_admin
  layout 'admin'

  def index
    @users=User.all
  end

  def add_product
    @producets =Product.all
  end

  def save_product
    product=Product.where("product_name=?",params[:product_name])
    if product.nil?
      Product.create(:product_name =>params[:product_name], :product_counts=>params[:product_count])
      render :json => {:status => "Product Successfully Added"}
    else
      render :json => {:status => "Product Already Added"}
    end
  end

  def add_category
    @category=Category.all
  end

  def save_category
    @category=Category.create(params[:category])
    @image=Image.new(params[:image])
    @image.category_id = @category.id
    @image.save
    #:category_id =>@category.id,
    redirect_to add_category_admins_path
  end

  private
  def ensure_admin
   unless current_user && current_user.admin?
     render :text => "You are not authorised to perform this action", :status => :unauthorized
   end
  end
end
