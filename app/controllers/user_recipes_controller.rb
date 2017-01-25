class UserRecipesController < ApplicationController
  layout "pages"
  def make

    @matching_user_recipe = UserRecipe.find_by(user_id: current_user.id, recipe_id: params[:id], to_make: true)

    if !@matching_user_recipe

      @recipe = Recipe.find_by(id: params[:id])
      @new_user_recipe = UserRecipe.create(user_id: current_user.id,
                                        recipe_id: @recipe.id,
                                        to_make: true,
                                        has_made: false)

      @new_user_recipe.recipe.ingredients.each do |ingredient|
        selected_ingredient = SelectedIngredient.create(user_recipe_id: @new_user_recipe.id,
                                                          do_i_have: false,
                                                          ingredient_id: ingredient.id)
      end

      redirect_to "/recipes/#{@new_user_recipe.id}/to_make"

    else
      redirect_to "/recipes/#{@matching_user_recipe.id}/to_make"
    end
  end

  def make_progress
    @user_recipe = UserRecipe.find_by(id: params[:id])
  end

  def make_complete
    @recipe = Recipe.find_by(id: params[:id])
    @user_recipe = UserRecipe.create(user_id: current_user.id,
                                      recipe_id: @recipe.id,
                                      to_make: false,
                                      has_made: true)
  end

  def make_submit
    @user_recipe = UserRecipe.find_by(id: params[:id])
    if params[:phone_number] != ""
      if params[:selected_ingredient_ids]
        params[:selected_ingredient_ids].each do |id|
          ingredient = SelectedIngredient.find_by(id: id)
          ingredient.assign_attributes(do_i_have: true)
          ingredient.save
        end
      end
      @client = Twilio::REST::Client.new(ENV["ACCOUNT_SID"], ENV["AUTH_TOKEN"])
      @client.messages.create(
        from: ENV["PHONE"],
        to: "+1#{params[:phone_number]}",
        body: "#{@user_recipe.selected_ingredients.where(do_i_have: false).model_method}"
      )
      @user_recipe.has_made = true
      @user_recipe.to_make = false
      @user_recipe.save
      redirect_to "/"
    else
      render "make_progress"
    end


  end

end
