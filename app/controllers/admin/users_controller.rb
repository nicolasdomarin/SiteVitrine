class Admin::UsersController < AdminController

before_action :require_admin

  def index
    @users = User.all
  end


  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

 
 
 def destroy
 	@user = User.find(params[:id])
   	if @user.destroy
   	 redirect_to '/admin/users'
   	end
  end



end