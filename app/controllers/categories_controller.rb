class CategoriesController < ApplicationController

	before_action :require_admin, :only => [:edit, :new ,:update]
	before_action :require_user, :only => [:show]

def index 
	get_categories
end

def show 
 get_categories
 @category = Category.find(params[:id])
 @products =  @category.products
 @sales = Sale.distinct.joins(:products).where("products.sale_id = sales.id AND products.stock > 0 AND products.category_id = ? AND ? BETWEEN start_datetime AND end_datetime", @category,Time.now)

end

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
