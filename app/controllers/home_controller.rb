class HomeController < ApplicationController
  def index
  end

  def search 
    render :json => {:status => "success", :data => "search"}
  end
end
