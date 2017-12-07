class AddActiveYnColumnToMeters < ActiveRecord::Migration[5.1]
  def change
  	add_column :meters, :active_yn, :boolean, default: true
  end
end
