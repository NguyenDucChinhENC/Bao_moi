class CreatePublishingCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :publishing_companies do |t|
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
