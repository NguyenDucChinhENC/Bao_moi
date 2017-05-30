class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :address
      t.float :total
      t.float :tax
      t.float :subtotal
      t.integer :order_status_id

      t.timestamps
    end
    add_index :orders, :user_id
    add_index :orders, :order_status_id
  end
end
