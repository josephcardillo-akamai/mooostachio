class CreateMentries < ActiveRecord::Migration[5.2]
  def change
    create_table :mentries do |t|
      t.decimal :amount
      t.datetime :date
      t.text :note
      
      t.timestamps
      t.references :mtype
      t.references :maccount
      t.references :mlocation
      t.references :mcategory
      t.references :mstatus
      t.references :user

    end
  end
end
