class AddUserIdtoGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :user_id, :integer, :null => false
    add_foreign_key :groups, :users
  end
end
