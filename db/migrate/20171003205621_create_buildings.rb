class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.integer :building_number
      t.string :building_address
      t.boolean :complete
      t.integer :building_route_order
      t.boolean :jajo
      t.boolean :fman
      t.boolean :mjsd
      t.references :workday, foreign_key: true

      t.timestamps
    end
  end
end
