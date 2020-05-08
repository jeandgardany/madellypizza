class CreateFillings < ActiveRecord::Migration[6.0]
  def change
    create_table :fillings do |t|
      t.string :name
      t.text :description
      t.decimal :price
      #t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
