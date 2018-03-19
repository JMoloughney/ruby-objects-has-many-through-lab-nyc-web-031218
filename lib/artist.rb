require_relative './song.rb'

class Artist

	attr_reader :name

	def initialize(name) 
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
		song.artist = self
	end

	def songs
		Song.all.select{|song| song.artist == self}
	end


	def genres 
		self.songs.map do |song|
			song.genre
		end
	end 



end