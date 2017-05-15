class CreateAuthorBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :author_books do |t|
    	t.integer :author_id 
    	t.integer :book_id

      t.timestamps
    end
    add_index :author_books, :author_id
    add_index :author_books, :book_id
  end
end
