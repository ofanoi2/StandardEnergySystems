class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string :building_number
      t.string :building_name
      t.string :building_address
      t.boolean :complete, default: false
      t.integer :building_start_order
      t.boolean :jajo, default: false
      t.boolean :fman, default: false
      t.boolean :mjsd, default: false
      t.string :active_yn
      t.references :workday, foreign_key: true

      t.timestamps
    end
  end
end
