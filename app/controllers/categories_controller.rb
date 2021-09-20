class CategoriesController < ApplicationController

  before_action :find_category, only: [:edit, :update, :destroy, :show]

  after_action :redirect_to_categories_index, only: [:create, :update, :destroy]

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
  end

  def edit 
  end 

  def update 
    @category.update(name: params[:category][:name])
  end 

  def destroy 
    @category.destroy
  end 

  def find_category
    @category = Category.find(params[:id])
  end 

  def redirect_to_categories_index
    redirect_to categories_path
  end

end
