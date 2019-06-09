 require 'pry'
require_relative './song.rb'
require_relative './artist.rb'


class Genre

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end


	def self.all
		@@all
	end

										# What is Genre class' songs instance meth supposed to do?
	def songs 							# Have a songs for 2 classes... 
		Song.all.select do |song| 		# Uninitialized constant Genre::Songs. Should be SELF?????   select, not collect!
			song.genre == self
			#song.genre == self #.name 	## what genre exactly??   self=Genre.
				#song 					# Was song.genre.. we want all song objects of given genre?
				#	binding.pry
			#end
		end
	end


	def artists 						#  has many artists, ***through songs***
		songs_of_my_genre = Song.all.select do |song|				#  1st, call songs to get all songs of given genre
			song.genre == self
		end

		artists_of_my_genre = songs_of_my_genre.collect do |song|
			#binding.pry
			song.artist 			#Want artist OBJECTS, not the name! 
		end
		return artists_of_my_genre
	end

#  @ binding - song.artist.name   returning nil... why? 
# [9] pry(#<Genre>)> song
# => #<Song:0x00007fdc4e32b108
#  @artist=#<Artist:0x00007fdc4e32b1f8 @name="Jay-Z">,
#  @genre=#<Genre:0x00007fdc4e32b158 @name="rap">,
#  @name="99 Problems">



	def self.all_genre_names			#Class level finder
		self.all.collect do |gname|		# was Genre.all.. 
			gname.name
		end
	end





end
