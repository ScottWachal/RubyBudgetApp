class AddAccountIdToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :account_id, :integer
  end
end
