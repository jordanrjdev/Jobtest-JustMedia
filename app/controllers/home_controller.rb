class HomeController < ApplicationController
  def index
  end

  def show 
    @products = Product.all
    @categories = Category.all
  end

  def search 
    @products = Product.where("UPPER(name) LIKE ?", "%#{params[:key].upcase}%")
    @keywords = Keyword.where("UPPER(name) LIKE ?", "%#{params[:key].upcase}%")
    if @keywords.length < 1 
      @categories = Category.where("UPPER(name) LIKE ?", "%#{params[:key].upcase}%")
    else 
      @categories = []
    end
    render :show 
  end

end