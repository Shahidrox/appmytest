class ImagesController < ApplicationController
  before_filter :ensure_admin
  layout 'admin'
  
  def index
  end

  private
  def ensure_admin
   unless current_user && current_user.admin?
     render :text => "You are not authorised to perform this action", :status => :unauthorized
   end
  end
end
