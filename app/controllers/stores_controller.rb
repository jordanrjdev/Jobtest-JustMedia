class StoresController < ApplicationController

  before_action :find_store, only: [:show, :edit , :update, :destroy]

  after_action :redirect_to_stores_index, only: [:create, :update, :destroy]


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
  end 
  
  def create 
    @store = Store.create(name: params[:store][:name], address: params[:store][:address], number: params[:store][:number], zip_code: params[:store][:zip_code], city: params[:store][:city], country: params[:store][:country])
  end 

  def destroy
    @store.destroy
  end 

  def find_store 
    @store = Store.find(params[:id])
  end 

  def redirect_to_stores_index
    redirect_to stores_path
  end

end
