class RecipesController < ApplicationController
  layout "pages"
  def index
    @recipes = Recipe.all

    if params[:search]
      # @recipes = Recipe.where("name ILIKE ?", "%#{params[:search]}%")
      # foods = Recipe.joins(ingredients: :food).where("foods.name ILIKE ?", "%#{params[:search]}%")
      # categories = Recipe.joins(:category).where("categories.name ILIKE ?", "%#{params[:search]}%")
      #
      # @recipes = @recipes + foods + categories
      puts params[:search]

      @categories = Category.where("name ILIKE ?", "%#{params[:search]}%").pluck(:id)
      recipe_ids = []
      recipe_ids = recipe_ids + Recipe.where(category_id: @categories).pluck(:id)
      recipe_ids = recipe_ids + Recipe.joins(ingredients: :food).where("foods.name ILIKE (?)", "%#{params[:search]}%").pluck(:recipe_id)
      recipe_ids = recipe_ids + Recipe.where("name ILIKE ?", "%#{params[:search]}%").pluck(:id)
      @recipes = Recipe.where(id: recipe_ids.uniq)


    elsif params[:ingredient_search]
      search_terms = params[:ingredient_search].split("\r\n").split("\n").split("\r").flatten!
      recipe_ids = []
      search_terms.each do |st|
        recipe_ids = recipe_ids + Recipe.joins(ingredients: :food).where("foods.name ILIKE ?", "%#{st}%")
      end
      @recipes = Recipe.where(id: recipe_ids.uniq)
    else
      @recipes = Recipe.all
    end




  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
  end

end
