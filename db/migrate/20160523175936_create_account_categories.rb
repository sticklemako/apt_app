class CreateAccountCategories < ActiveRecord::Migration
  def change
    create_table :account_categories do |t|
      t.references :category
      t.references :account_head
      t.text :desc

      t.timestamps null: false
    end
  end
end
