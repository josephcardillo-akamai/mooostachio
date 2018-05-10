class CreateMcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :mcategories do |t|
      t.string :name

      t.timestamps
      t.references :user
    end
  end
end
