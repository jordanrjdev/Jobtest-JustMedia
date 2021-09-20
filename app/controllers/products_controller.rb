class ProductsController < ApplicationController 
  before_action :find_product, only: [:edit, :update, :destroy, :show]

  after_action :redirect_to_products_index, only: [:create, :update, :destroy]

  def index 
    @products = Product.all
  end 
  
  def show
  end 

  def new
    @product = Product.new
  end 

  def create 
    @product = Product.create(name: params[:product][:name], color: params[:product][:color], price: params[:product][:price], size: params[:product][:size])
  end

  def edit 
  end 

  def update 
    @product.update(name: params[:product][:name], color: params[:product][:color], price: params[:product][:price], size: params[:product][:size])
  end 

  def destroy 
    @product.destroy
  end 

  def find_product 
    @product = Product.find(params[:id])
  end 

  def redirect_to_products_index
    redirect_to products_path
  end
end
