class Recording < ActiveRecord::Base
	belongs_to :song
	has_many :bands, :foreign_key => :name, :primary_key => :band_name
end