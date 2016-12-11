class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :amount
      t.integer :food_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
