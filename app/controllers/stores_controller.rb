class StoresController < ApplicationController

  before_action :find_store, only: [:show, :edit , :update, :destroy]

  def index
    @stores = Store.all 
  end 

  def show
  end 

  def new
    @store = Store.new
  end

  def edit 
  end 

  def update 
    if @store.update(store_param)
      redirect_to stores_path
    else 
      render :edit
    end
  end 
  
  def create 
    @store = Store.create(store_param)
    if @store.save
      redirect_to stores_path
    else 
      render :new 
    end 
  end 

  def destroy
    @store.products.destroy_all
    @store.destroy
    redirect_to stores_path
  end 

  def find_store 
    @store = Store.find(params[:id])
  end 

  def store_param
    params.require(:store).permit(:name, :address, :number, :zip_code, :city, :country)
  end

end
