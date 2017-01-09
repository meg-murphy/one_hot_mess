class RenameDescriptionToSource < ActiveRecord::Migration[5.0]
  def change
    rename_column :recipes, :description, :source
  end
end
