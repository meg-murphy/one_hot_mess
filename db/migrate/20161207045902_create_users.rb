class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone_number
      t.string :password
      t.string :address
      t.integer :user_type_id

      t.timestamps
    end
  end
end
