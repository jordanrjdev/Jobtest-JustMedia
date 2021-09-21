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
    @store.update(name: params[:store][:name], address: params[:store][:address], number: params[:store][:number], zip_code: params[:store][:zip_code], city: params[:store][:city], country: params[:store][:country])
    redirect_to stores_path
  end 
  
  def create 
    @store = Store.create(name: params[:store][:name], address: params[:store][:address], number: params[:store][:number], zip_code: params[:store][:zip_code], city: params[:store][:city], country: params[:store][:country])
    redirect_to stores_path

  end 

  def destroy
    @store.destroy
    redirect_to stores_path
  end 

  def find_store 
    @store = Store.find(params[:id])
  end 

end
