class SalesController < ApplicationController
	before_action :require_admin, :only => [:edit, :new , :create , :update]
	before_action :require_user

def index 
	@categories = Category.all
end

def create

	@sale = Sale.new(sales_params)

	if @sale.save
		redirect_to '/admin'
	else
		redirect_to '/admin/sales/new'
	end
end

def show
	@order_item = current_order.order_items.new
	@sale = Sale.find(params[:id])
    @products = @sale.products
    get_categories
end

def update
    @sale = Sale.find(params[:id])
 	@sale.update!(sales_params)
    redirect_to '/admin/sales/show/'+"#{@sale.id}"
end
  
def sales_params
	params.require(:sale).permit(:start_datetime, :end_datetime , :label , :description , :shipping_fees)
end


 
end
