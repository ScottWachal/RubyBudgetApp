class AddProfileAccountIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :profile_account_id, :integer
  end
end
