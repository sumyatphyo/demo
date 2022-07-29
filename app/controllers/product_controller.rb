class ProductController < ApplicationController
  require 'carrierwave/orm/activerecord'
  def show
    @category = Category.find(params[:id])
    @product = Product.select('*').where('category_id = ?', @category.id)
    Rails.logger.info("What product")
    Rails.logger.info(@product.name)
  end

  def new
    @category = Category.find(params[:id])
    Rails.logger.info("What id")
    Rails.logger.info(@category)
  end
  
  def create
    @category = Category.find(params[:id])
    @product = Product.new(category_params)
    @product.category_id = @category.id
    Rails.logger.info("Category")
    Rails.logger.info(@product)
    if @product.save
      # flash[:success] = "Welcome our website!"
      redirect_to product_show_path
    else
      render 'new'
    end
  end

  def delete
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to product_path

  end

  private

    def category_params
      params.require(:product).permit(:pname, :image, :price)
    end
end
