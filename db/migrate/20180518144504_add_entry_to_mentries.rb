class AddEntryToMentries < ActiveRecord::Migration[5.2]
  def change
    add_column :mentries, :entry_id, :integer
  end
end
