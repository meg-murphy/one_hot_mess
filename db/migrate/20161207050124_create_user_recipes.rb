class CreateUserRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :user_recipes do |t|
      t.integer :recipe_id
      t.integer :user_id
      t.boolean :to_make
      t.boolean :has_made

      t.timestamps
    end
  end
end
