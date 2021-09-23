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
    @stores = Store.all
  end 

  def create 
    @product = Product.create(product_params)
    if @product.save
      @product.save_categories
      @product.save_stores
      redirect_to products_path
    else
      @categories = Category.all
      @stores = Store.all
      render :new 
    end
  end 

  def edit 
    @categories = Category.all
    @stores = Store.all
  end 

  def update 
    if @product.update(product_params)
      @product.save_categories
      @product.save_stores
      redirect_to products_path
    else
      @categories = Category.all
      render :edit
    end
  end 

  def destroy 
    @product.categories.destroy_all
    @product.stores.destroy_all
    @product.destroy
    redirect_to products_path
  end 

  def find_product 
    @product = Product.find(params[:id])
  end 

  def product_params 
    params.require(:product).permit(:image, :name, :color, :price, :size, category_elements: [], store_elements: [])
  end

end
