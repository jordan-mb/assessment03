class Artist < ActiveRecord::Base
	belongs_to :band, :foreign_key => :name, :primary_key => :band_name
	has_many :recordings, :through => :band

	has_many :authored_songs, :foreign_key => :author, :primary_key => :name

	def self.authored_songs
		authors_and_songs = {}
		authors = artist.includes(:authored_songs)
		authors.each do |author|
			artists_and_songs[author] = author.authored_songs
		end

		authors_and_songs
	end
end