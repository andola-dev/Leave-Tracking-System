class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  ##redirect to Leave listing page after login
  def after_sign_in_path_for(resource)
   calendar_path
  end
  
  def after_sign_out_path_for(resource)
   calendar_path
  end

  private
    def authenticate_admin 
      if user_signed_in?
        current_user.admin?
      else
        false
      end
    end
    
end
