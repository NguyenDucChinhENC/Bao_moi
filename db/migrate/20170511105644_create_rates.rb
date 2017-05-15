class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.integer :user_id
      t.integer :book_id
      t.integer :rate

      t.timestamps
    end
    add_index :rates, :user_id
    add_index :rates, :book_id
  end
end
