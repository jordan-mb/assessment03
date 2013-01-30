class AddBandToRecording < ActiveRecord::Migration
  def change
  	add_column :recordings, :band_name, :string
  end
end
