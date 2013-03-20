class ChangeAccountBalanceTo2Decimals < ActiveRecord::Migration
  def up
    change_column :accounts, :balance, :decimal, :precision => 10, :scale => 2
  end

  def down
    change_column :accounts, :balance, :decimal, :precision => 10, :scale => 0
  end
end
