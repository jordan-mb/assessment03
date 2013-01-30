class AddRecordings < ActiveRecord::Migration
  def change
  	create_table :recordings do |t|
  		t.string :name

  		t.timestamp
  	end
  end
end
