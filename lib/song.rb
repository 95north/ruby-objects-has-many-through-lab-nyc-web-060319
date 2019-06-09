

class Song

	attr_accessor :name, :artist
	attr_reader :genre
	@@all = []

	def initialize(name, artist, genre)
		@artist = artist
		@name = name
		@genre = genre
		#@genre = self.genre=genre
		@@all << self
		# Add genre to genre.all here? 
	end


	def genre=(genre)
		#if !Genre.all.include?(genre.name)			# added 1235 pm
		if !Genre.all_genre_names.include?(genre)
			holder = genre
			#binding.pry
			#instance_variable_set("@#{holder}", (Genre.new(genre)) )		#Added genre =.  Genre should have var name = to name
			# Got error on instance variable: Genre not allowed as an instance variable name
			Genre.all << genre # This adds an object. OK?   Not sure I can access Genre.all this way.. 
		end	
	end


	def self.all
		@@all
	end

	# When Artist not here, 1st 2 tests OK
	# def artist 								# infinite loop.. 
	# 	self.artist

	# end






end
