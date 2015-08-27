class CartsController < ApplicationController
 	before_action :require_user, :only => [:show]
  def show
  	get_categories
    @order_items = current_order.order_items
  end

  def payment 
  	get_categories
	session[:order_id] = nil
  end
end
