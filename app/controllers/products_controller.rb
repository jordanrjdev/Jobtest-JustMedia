class ProductsController < ApplicationController 
  before_action :find_product, only: [:edit, :update, :destroy, :show]

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
    redirect_to products_path
  end

  def edit 
  end 

  def update 
    @product.update(name: params[:product][:name], color: params[:product][:color], price: params[:product][:price],  size: params[:product][:size])
    redirect_to products_path
  end 

  def destroy 
    @product.destroy
    redirect_to products_path
  end 

  def find_product 
    @product = Product.find(params[:id])
  end 

end
