class ProductsController < ApplicationController
	before_action :require_admin, :only => [:edit, :new , :create , :update]
    before_action :require_user

	def index 
		@categories = Category.all
		 @products = Product.all
	    @order_item = current_order.order_items.new
	end
	
	def create
     
		@product = Product.new(products_params)

		if @product.save

			redirect_to '/admin'
		else
			
 			redirect_to '/admin/products/new'
		end
	end

	def show
	    @product = Product.find(params[:id])
	    get_categories
	    @order_item = current_order.order_items.new
	end

	def update
	    @product = Product.find(params[:id])
	 	@product.update!(products_params)
	    redirect_to '/admin/products/show/'+"#{@product.id}"
	end
	  
	def products_params
			params.require(:product).permit(:label, :price, :description , :category_id ,:sale_id ,:special_price, :stock ,:image)
	end

end
