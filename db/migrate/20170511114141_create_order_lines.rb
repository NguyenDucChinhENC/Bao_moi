class CreateOrderLines < ActiveRecord::Migration[5.0]
  def change
    create_table :order_lines do |t|
      t.integer :order_id
      t.integer :book_id
      t.float :price
      t.integer :number
      t.float :total_price

      t.timestamps
    end
    add_index :order_lines, :order_id
    add_index :order_lines, :book_id
  end
end
