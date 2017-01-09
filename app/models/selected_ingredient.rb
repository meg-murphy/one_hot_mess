class SelectedIngredient < ApplicationRecord
  belongs_to :user_recipe
  belongs_to :ingredient

  def self.model_method
    final_string = "\n Pick up: \n"
    all.each do |selected_ingredient|
      final_string = final_string + "- #{selected_ingredient.ingredient.amount} #{selected_ingredient.ingredient.food.name}\n"
    end
    return final_string
  end

end
