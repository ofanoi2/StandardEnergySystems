class CreateWorkdays < ActiveRecord::Migration[5.1]
  def change
    create_table :workdays do |t|
      t.string :title
      t.string :workday_type
      t.boolean :complete
      t.timestamps
    end
  end
end
