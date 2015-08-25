class ProductsController < ApplicationController
	before_action :require_editor, :only => [:edit]

	def create

		@product = Product.new(products_params)

		if @product.save
			redirect_to '/admin'
		else
			redirect_to '/admin/products/new'
		end
	end

	def products_params
		params.require(:product).permit(:label, :price, :special_price, :stock ,:image)
	end

end
