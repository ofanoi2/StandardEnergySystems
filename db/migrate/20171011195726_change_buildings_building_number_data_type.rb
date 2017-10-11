class ChangeBuildingsBuildingNumberDataType < ActiveRecord::Migration[5.1]
  def change
  	change_column :buildings, :building_name, :string 
  end
end
