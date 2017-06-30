class Artist

attr_accessor :name, :songs

	@@song_count = 0

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
	end

	def add_song(song)
		@songs << song
		song.artist = self
		# tells the song that it belongs to that artist
		@@song_count += 1
	end

	def add_song_by_name(song)
		new_song = Song.new(song)
		# creates a new song
		self.add_song(new_song)
		# associate. add the newly made song to the add_song method created.
		# new song will be added to the collection and tells the song that it belongs to the artist
	end

	def self.song_count
		@@song_count
	end

end












