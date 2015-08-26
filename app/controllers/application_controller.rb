class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery :with => :exception

  helper_method :current_user 
  helper_method :current_order


def current_user 
  @current_user ||= User.find(session[:user_id]) if session[:user_id] 
end

def require_user 
  redirect_to '/login' unless current_user 
end

def require_editor 
  redirect_to '/login' unless current_user.editor? 
end

def require_admin

	if current_user
		redirect_to '/' unless current_user.admin?
	else 
	  redirect_to '/login'
	end 
end

 def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

 def get_categories
      @categories = Category.all
 end

end
