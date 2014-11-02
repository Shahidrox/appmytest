class ApplicationController < ActionController::Base
  protect_from_forgery
    def after_sign_in_path_for(resource)
      if current_user.admin?
       return '/admins'
      elsif !current_user.admin?
      return session["user_return_to"] || root_path
      else
        return '/users/sign_in'
      end    
    end
end
