class AddDemandYnColumnToMeters < ActiveRecord::Migration[5.1]
  def change
  	add_column :meters, :demand_yn, :boolean, default: false
  end
end
