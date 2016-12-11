class ChangeImageIdToInteger < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :image, :string
    add_column :recipes, :image_id, :integer
  end
end
