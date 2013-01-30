class Song < ActiveRecord::Base
	has_many :recordings
	has_many :bands, :through => :recording
end