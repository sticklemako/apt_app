class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :account_head
      t.string :entry_type
      t.string :chq_no
      t.string :receipt_no
      t.float :value
      t.boolean :is_debit
      t.string :title
      t.text :details
      t.date :date_of

      t.timestamps null: false
    end
    add_index :entries, ["account_head_id"]
  end
end
