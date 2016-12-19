class ChangeUserTypeIdDefault < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :user_type_id, :integer, default: 2
  end
end
