


class Artist

	attr_accessor :name

	@@all = []


	def initialize(name)
		@name = name
		
		@@all << self
	end


	def self.all
		@@all
	end


	def new_song(name, genre)	
		Song.new(name, self, genre)
	end





	def songs		# Returns songs of the artist
		Song.all.select do |song|
		#binding.pry
			song.artist == self
		end

	end


	def genres				# Call on an artist, it returns all the genres they have songs of
		songs.collect do |song|
			song.genre	 # Want .name or no?  NO. 
		end
	end




end 	# end class
