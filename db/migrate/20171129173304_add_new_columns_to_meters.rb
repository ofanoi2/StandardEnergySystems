class AddNewColumnsToMeters < ActiveRecord::Migration[5.1]
  def change
  	add_column :meters, :demand_units, :decimal
  	add_column :meters, :meter_location, :string
  end
end
