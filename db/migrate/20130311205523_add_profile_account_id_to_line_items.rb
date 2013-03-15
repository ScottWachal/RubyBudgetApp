class AddProfileAccountIdToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :profile_account_id, :integer
  end
end
