class ChangeColumnNameUnitToUnitsInMeters < ActiveRecord::Migration[5.1]
  def change
  	rename_column :meters, :unit, :units
  end
end
