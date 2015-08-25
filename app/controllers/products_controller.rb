class ProductsController < ApplicationController
	before_action :require_admin, :only => [:edit, :new , :create , :update]

	def create

		@product = Product.new(products_params)

		if @product.save
			redirect_to '/admin'
		else
			redirect_to '/admin/products/new'
		end
	end

def update
    @product = Product.find(params[:id])
 	@product.update!(products_params)
    redirect_to '/admin/products/show/'+"#{@product.id}"
  end
	def products_params
		params.require(:product).permit(:label, :price, :description , :category_id ,:special_price, :stock ,:image)
	end

end
