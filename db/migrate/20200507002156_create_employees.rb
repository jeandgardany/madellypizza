class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.integer :code
      t.string :name
      t.text :address
      t.string :phone
      t.string :occupation
      t.text :obs
      t.integer :status

      t.timestamps
    end
  end
end
