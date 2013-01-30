class AddBandtoArtist < ActiveRecord::Migration
  def change
  	add_column :artists, :band_name, :string
  end
end
