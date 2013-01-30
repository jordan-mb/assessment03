class Band < ActiveRecord::Base
	has_many :artists, :foreign_key => :band_name, :primary_key => :name
	has_many :recordings

	def self.many_recordings_of_a_song
		self
			.select("band.*, recording.name AS song_name ,COUNT(*) AS song_count")
			.joins(:recordings)
			.where("song_count > 1")
			.group("band.name")
	end
end