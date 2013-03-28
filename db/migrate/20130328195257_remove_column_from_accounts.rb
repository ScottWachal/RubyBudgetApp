class RemoveColumnFromAccounts < ActiveRecord::Migration
  def up
    remove_column :accounts, :balance
  end

  def down
    add_column :accounts, :balance, :decimal
  end
end
