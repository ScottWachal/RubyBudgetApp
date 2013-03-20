class ChangeEnvelopeBudgetTo2Decimals < ActiveRecord::Migration
  def up
    change_column :envelopes, :budget, :decimal, :precision => 10, :scale => 2
  end

  def down
    change_column :envelopes, :budget, :decimal, :precision => 10, :scale => 0
  end
end
