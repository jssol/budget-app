class AddGroupIdColumnToEntities < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :group_id, :integer, :null => false
    add_column :groups, :entity_id, :integer, :null => false
    add_column :groups, :user_id, :integer, :null => false
  end
end
