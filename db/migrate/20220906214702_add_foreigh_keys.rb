class AddForeighKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :entities, :groups
    add_foreign_key :groups, :entities
    add_index :entities, :group_id
    add_index :groups, :entity_id
  end
end
