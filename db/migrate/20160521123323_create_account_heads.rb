class CreateAccountHeads < ActiveRecord::Migration
  def change
    create_table :account_heads do |t|
      t.string :name
      t.text :desc

      t.timestamps null: false
    end
  end
end
