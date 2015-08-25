class CategoriesController < ApplicationController

	before_action :require_admin, :only => [:edit, :new ,  :update]

def create

		@category = Category.new(products_params)

		if @category.save
			redirect_to '/admin/categories'
		else
			redirect_to '/admin/categories/new'
		end
	end

 def update
    @category = Category.find(params[:id])
 	@category.update!(products_params)
    redirect_to '/admin/categories'
 end
  
	def products_params
		params.require(:category).permit(:label, :price, :description , :category_id ,:special_price, :stock ,:image)
	end




end
