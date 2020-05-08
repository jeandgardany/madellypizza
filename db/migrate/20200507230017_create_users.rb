class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :role
      t.integer :status
      t.text :obs

      t.timestamps
    end
  end
end
