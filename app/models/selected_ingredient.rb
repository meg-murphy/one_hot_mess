class SelectedIngredient < ApplicationRecord
  belongs_to :user_recipe
  belongs_to :ingredient
end
