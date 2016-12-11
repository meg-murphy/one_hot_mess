class CreateSelectedIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :selected_ingredients do |t|
      t.boolean :do_i_have
      t.integer :ingredient_id
      t.integer :user_recipe_id

      t.timestamps
    end
  end
end
