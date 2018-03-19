require_relative './song.rb'

class Genre

	attr_reader :name

	def initialize(name) 
		@name = name
		@songs = []
	end

	def songs
		Song.all.select{|song| song.genre == self}
	end

	def artists
		self.songs.collect do |song|
			song.artist
		end
	end

end
