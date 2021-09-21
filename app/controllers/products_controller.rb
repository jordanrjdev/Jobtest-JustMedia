class ProductsController < ApplicationController 
  before_action :find_product, only: [:edit, :update, :destroy, :show]

  def index 
    @products = Product.all
  end 
  
  def show
  end 

  def new
    @product = Product.new
    @categories = Category.all
  end 

  def create 
    @product = Product.create(product_params)
    redirect_to products_path
  end

  def edit 
    @categories = Category.all
  end 

  def update 
    @product.update(product_params)
    redirect_to products_path
  end 

  def destroy 
    @product.destroy
    redirect_to products_path
  end 

  def find_product 
    @product = Product.find(params[:id])
  end 

  def product_params 
    params.require(:product).permit(:name, :color, :price, :size, category_elements: [])
  end

end
