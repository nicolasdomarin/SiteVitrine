class Admin::SalesController < AdminController

before_action :require_admin

  def index
    @sales = Sale.all
  end


  def new
    @sale = Sale.new
  end

  def show
    @sale = Sale.find(params[:id])
  end

  def edit
    @sale = Sale.find(params[:id])
  end

 
 
 def destroy
 	@sale = Sale.find(params[:id])
   	if @sale.destroy
   	 redirect_to '/admin/sales'
   	end
  end



end