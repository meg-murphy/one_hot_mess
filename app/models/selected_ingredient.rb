class SelectedIngredient < ApplicationRecord
  belongs_to :user_recipe
  belongs_to :ingredient

  def self.model_method
    final_string = ""
    final_string = final_string + "#{selected_ingredient.ingredient.amount}#{selected_ingredient.ingredient.food.name},"

    all.each do |si|
      si.ingredient.
    end
  end
  return final_string
end
