class Artist
	extend Memorable::ClassMethods, Findable::ClassMethods
	include Paramable::InstanceMethods, Memorable::InstanceMethods

	attr_accessor :name

	@@artists = []

	def self.all
		@@artists
	end

	def songs
		Song.all.filter{|song| song.artist == self}
	end

	def add_song(song)
		song.artist = self
	end

	def add_songs(songs)
		songs.each{|song| add_song(song)}
	end
end
