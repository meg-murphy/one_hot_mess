class Recipe < ApplicationRecord
  has_many :directions
  has_many :images
  has_many :ingredients

  belongs_to :recipe_category

  has_many :favorites
  has_many :users, through: :favorites

  has_many :user_recipes
  has_many :users, through: :user_recipes
end
