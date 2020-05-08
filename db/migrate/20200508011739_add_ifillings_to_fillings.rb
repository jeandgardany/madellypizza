class AddIfillingsToFillings < ActiveRecord::Migration[6.0]
  def change
    add_column :fillings, :ifillings, :json
  end
end
