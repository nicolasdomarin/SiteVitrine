class UsersController < ApplicationController
 before_action :require_user , :only => [:index]

   def index
   	@categories = Category.all
    @products = Product.all

      @order_item = current_order.order_items.new
   end
   
   def new
  	@user = User.new
    @categories = Category.all

   end 

   def create 
  	@user = User.new(user_params) 
   

 	  	if @user.save 
	    	session[:user_id] = @user.id 
	    	redirect_to '/' 
	  	else 
	    	redirect_to '/signup' 
	  	end 
	end

    private
  	

  	def user_params
    	params.require(:user).permit(:first_name, :last_name, :username, :email, :password , :newsletter ,:salt)
  	end

end
