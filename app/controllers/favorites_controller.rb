class FavoritesController < ApplicationController
  def create
      @recipe = Recipe.find_by(id: params[:id])
      user_favorite_recipe = Favorite.new(user_id: current_user.id,
                                        recipe_id: params[:recipe_id])
     user_favorite_recipe.save
     flash[:success] = "Recipe saved to favorites"
     redirect_to "/users/#{current_user.id}"
  end
end
