class AddEnvelopeIdToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :envelope_id, :integer
  end
end
