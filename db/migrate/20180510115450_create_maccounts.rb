class CreateMaccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :maccounts do |t|
      t.string :name

      t.timestamps
      t.references :user
    end
  end
end
