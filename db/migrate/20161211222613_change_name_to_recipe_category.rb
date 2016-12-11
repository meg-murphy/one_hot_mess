class ChangeNameToRecipeCategory < ActiveRecord::Migration[5.0]
  def change
    rename_column :recipes, :recipe_categories_id, :recipe_category_id
  end
end
