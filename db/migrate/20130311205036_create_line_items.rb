class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :name
      t.decimal :price
      t.datetime :date_of_purchase
      t.text :description

      t.timestamps
    end
  end
end
