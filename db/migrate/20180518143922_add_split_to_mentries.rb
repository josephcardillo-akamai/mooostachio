class AddSplitToMentries < ActiveRecord::Migration[5.2]
  def change
    add_column :mentries, :split, :boolean
  end
end
