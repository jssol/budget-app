class ChangeDefaultValues < ActiveRecord::Migration[7.0]
  def change
    remove_column :groups, :entity_id, :integer
    remove_column :entities, :group_id, :integer
    remove_column :groups, :user_id, :integer
  end
end
