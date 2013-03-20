class CreateEnvelopes < ActiveRecord::Migration
  def change
    create_table :envelopes do |t|
      t.string :name
      t.decimal :budget

      t.timestamps
    end
  end
end
