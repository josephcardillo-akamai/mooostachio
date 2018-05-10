class CreateMlocations < ActiveRecord::Migration[5.2]
  def change
    create_table :mlocations do |t|
      t.string :name

      t.timestamps
      t.references :user
    end
  end
end
