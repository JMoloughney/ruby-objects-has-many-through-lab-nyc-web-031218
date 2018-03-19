class Song

	attr_accessor :genre, :artist

	ALL = []

	def initialize(name, genre)
		@name = name
		@genre = genre
		ALL << self
	end

	def self.all
		ALL
	end


end