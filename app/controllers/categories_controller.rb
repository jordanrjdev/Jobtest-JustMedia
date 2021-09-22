class CategoriesController < ApplicationController

  before_action :find_category, only: [:edit, :update, :destroy, :show]

  def index 
    @categories = Category.all
  end 
  
  def show
  end 

  def new
    @keyword = Keyword.new
    @category = Category.new
  end 

  def create 
    @category = Category.create(name: params[:category][:name])
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  def edit
  end 

  def update 
    @category.update(categories_params)
    @category.save_keywords
    redirect_to categories_path
  end 

  def destroy 
    @category.destroy
    redirect_to categories_path
  end 

  def find_category
    @category = Category.find(params[:id])
  end 

  def categories_params
    params.require(:category).permit(:name, :keywords_string)
  end

end
