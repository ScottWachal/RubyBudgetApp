class CreateProfileAccounts < ActiveRecord::Migration
  def change
    create_table :profile_accounts do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
