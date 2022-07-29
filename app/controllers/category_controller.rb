class CategoryController < ApplicationController
  def index
    @categorys = Category.all
  end

  def new
  end
  
  def create
    @category = Category.new(cname: params[:category][:cname])
    if @category.save
      # flash[:success] = "Welcome our website!"
      redirect_to category_index_path
    else
      render 'new'
    end
  end

  private

    def category_params
      params.require(:product).permit(:pname, :image, :price)
    end
end
