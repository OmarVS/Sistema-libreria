class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.integer :amount
      t.integer :price

      t.timestamps null: false
    end
  end
end
