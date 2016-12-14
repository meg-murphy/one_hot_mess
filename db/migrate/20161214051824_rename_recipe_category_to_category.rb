class RenameRecipeCategoryToCategory < ActiveRecord::Migration[5.0]
  def change
    rename_column :recipes, :recipe_category_id, :category_id
  end
end
