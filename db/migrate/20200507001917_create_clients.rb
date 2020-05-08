class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.integer :code
      t.string :name
      t.text :address
      t.string :phone
      t.text :obs
      t.integer :status

      t.timestamps
    end
  end
end
