class IngredientsController < ApplicationController
  layout "pages"
  def show
  end


  def index
    @recipes = Recipe.all

    if params[:search]
      search_terms = params[:search].split("/r/n").split("/n").split("/r")
      puts search_terms.class
      puts "["
      search_terms.each do |term|
        puts "#{term},"
      end
      puts "]"
      @recipes = Recipe.joins(:food).where("foods.name ILIKE ?", "%#{params[:search]}%")
    else
      @recipes = Recipe.all
    end
  end

end
