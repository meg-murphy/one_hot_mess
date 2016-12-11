class CreateDirections < ActiveRecord::Migration[5.0]
  def change
    create_table :directions do |t|
      t.integer :recipe_id
      t.string :description
      t.string :step_order

      t.timestamps
    end
  end
end
