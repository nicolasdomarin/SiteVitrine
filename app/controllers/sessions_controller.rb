class SessionsController < ApplicationController
 

 def new
   @categories = Category.all
 end
   
   def create
   @user = User.find_by_username(params[:session][:username])
   if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/'
  	else
      redirect_to '/login'
  	end 
  end

  def destroy 
    session[:user_id] = nil 
    session[:order_id] = nil
    redirect_to '/' 
  end



end
