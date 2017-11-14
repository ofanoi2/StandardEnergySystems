class CreateMeters < ActiveRecord::Migration[5.1]
  def change
    create_table :meters do |t|
      t.string :meter_number
      t.string :meter_type
      t.integer :sequence_number
      t.integer :previous_read
      t.integer :current_read
      t.integer :unit
      t.decimal :previous_read_demand
      t.decimal :current_read_demand
      t.datetime :previous_read_date
      t.datetime :current_read_date
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
