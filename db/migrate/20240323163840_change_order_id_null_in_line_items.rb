class ChangeOrderIdNullInLineItems < ActiveRecord::Migration[7.1]
  def up
    change_column :line_items, :order_id, :integer, null: true
  end

  def down
    change_column :line_items, :order_id, :integer, null: false
  end
end
