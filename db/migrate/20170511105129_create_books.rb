class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :category_id
      t.integer :publishing_company_id
      t.float :price
      t.text :summary
      t.integer :quantity

      t.timestamps
    end
    add_index :books, :category_id
    add_index :books, :publishing_company_id
  end
end
