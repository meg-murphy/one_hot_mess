class IngredientsController < ApplicationController
  layout "pages"
  
  def index
    @recipes = Recipe.all

    if params[:search]
      search_terms = params[:search].split("/r/n").split("/n").split("/r")
      search_terms.each do |term|
      end

      @recipes = Recipe.joins(:food).where("foods.name ILIKE ?", "%#{params[:search]}%")
    else
      @recipes = Recipe.all
    end
  end

end
