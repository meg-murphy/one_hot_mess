class User < ApplicationRecord
  has_many :favorites
  has_many :recipes, through: :favorites

  has_many :user_recipes
  has_many :recipes, through: :user_recipes

  belongs_to :user_type
end
