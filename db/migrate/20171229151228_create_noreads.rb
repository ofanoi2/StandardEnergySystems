class CreateNoreads < ActiveRecord::Migration[5.1]
  def change
  	create_table :noreads do |t|
  		t.string :description
  		

  		t.timestamps
  	end
  end
end
