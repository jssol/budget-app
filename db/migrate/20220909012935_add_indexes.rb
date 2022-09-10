class AddIndexes < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :group_id, :integer, null: false
    change_column :entities, :author_id, :integer, null: false
    change_column :entities, :name, :string, null: false
    add_foreign_key :entities, :groups, null: false
    add_index :entities, :author_id
    add_index :entities, :group_id
    add_index :groups, :user_id
  end
end
