class AddColumnToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :allocation, :boolean, default: false
  end
end
