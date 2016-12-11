class RemoveImageColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :image_id, :integer
  end
end
