class SetUserType < ActiveRecord::Migration[5.0]
  def change
    change_column :user_types, :name, :string, default: "User" 
  end
end
