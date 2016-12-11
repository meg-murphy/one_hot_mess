class Ingredient < ApplicationRecord
  has_many :selected_ingredients

  belongs_to :recipe
  belongs_to :food 
end
