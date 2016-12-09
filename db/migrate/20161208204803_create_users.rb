class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :phone
      t.string :email

      t.timestamps null: false
    end
  end
end