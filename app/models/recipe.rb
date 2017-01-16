class Recipe < ApplicationRecord
  has_many :directions
  has_many :images
  has_many :ingredients

  belongs_to :category

  has_many :favorites
  has_many :users, through: :favorites

  has_many :user_recipes
  has_many :users, through: :user_recipes

  def self.search(search)
    where("name ILIKE ? OR food ILIKE ?", "%#{search}%", "%#{search}%")
  end
end
