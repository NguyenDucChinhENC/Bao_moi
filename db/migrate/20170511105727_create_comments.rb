class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :book_id
      t.text :content

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :book_id
  end
end
