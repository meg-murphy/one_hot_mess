class CategoriesController < ApplicationController
layout "pages" 
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by(id: params[:id])
  end

end
