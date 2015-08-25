class Admin::ProductsController < AdminController

before_action :require_admin

  def index
    @products = Product.all
  end


  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

 
 
 def destroy
 	@product = Product.find(params[:id])
 	if @product.destroy
 	 redirect_to '/admin/products'
 	end
  end



end