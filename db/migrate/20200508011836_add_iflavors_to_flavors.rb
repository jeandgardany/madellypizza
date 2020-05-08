class AddIflavorsToFlavors < ActiveRecord::Migration[6.0]
  def change
    add_column :flavors, :iflavors, :json
  end
end
