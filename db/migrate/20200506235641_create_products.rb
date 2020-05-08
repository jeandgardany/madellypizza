class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :code
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :status
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
