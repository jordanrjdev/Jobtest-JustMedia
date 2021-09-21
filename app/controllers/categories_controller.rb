class CategoriesController < ApplicationController

  before_action :find_category, only: [:edit, :update, :destroy, :show]

  def index 
    @categories = Category.all
  end 
  
  def show
  end 

  def new
    @category = Category.new
  end 

  def create 
    @category = Category.create(name: params[:category][:name])
    redirect_to categories_path
  end

  def edit 
  end 

  def update 
    @category.update(name: params[:category][:name])
    redirect_to categories_path
  end 

  def destroy 
    @category.destroy
    redirect_to categories_path
  end 

  def find_category
    @category = Category.find(params[:id])
  end 

end
