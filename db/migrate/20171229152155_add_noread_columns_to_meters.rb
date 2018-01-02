class AddNoreadColumnsToMeters < ActiveRecord::Migration[5.1]
  def change
  	add_column :meters, :noread_yn, :boolean, default: false
  	add_column :meters, :noread_description, :string
  end
end
