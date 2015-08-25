class Admin::CategoriesController < AdminController

before_action :require_admin

  def index
    @categories = Category.all
  end


  def new
    @category = Category.new
  end
  
  def show
     @category =  Category.find(params[:id])
  end

  def edit
    @category =  Category.find(params[:id])
  end
 
 def destroy
   @category =  Category.find(params[:id])
    if  @category.destroy
   redirect_to '/admin/categories'
    end
  end

  def categories_params
    params.require(:product).permit(:label)
  end


end