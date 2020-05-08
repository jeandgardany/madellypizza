class CreateFlavors < ActiveRecord::Migration[6.0]
  def change
    create_table :flavors do |t|
      t.string :name
      t.text :description
      #t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
