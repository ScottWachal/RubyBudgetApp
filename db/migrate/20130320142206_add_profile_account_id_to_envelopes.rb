class AddProfileAccountIdToEnvelopes < ActiveRecord::Migration
  def change
    add_column :envelopes, :profile_account_id, :integer
  end
end
