class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.integer :parents_id
      t.string :name

      t.timestamps
    end
    add_index :categories, :parents_id
  end
end
