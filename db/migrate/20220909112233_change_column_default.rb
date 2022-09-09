class ChangeColumnDefault < ActiveRecord::Migration[7.0]
  def change
    change_column :entities, :amount, :integer, null: false, default: 0
  end
end
