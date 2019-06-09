
require_relative './song.rb'
require_relative './artist.rb'
require_relative './genre.rb'
require 'pry'


#. ruby run.rb

art1 = Artist.new("dali")
art2 = Artist.new("miro")
art3 = Artist.new("haring")



song1 = Song.new(art1, "play on", "pop")
song2 = Song.new(art2, "dont stop the music", "pop")
song3 = Song.new(art3, "i love music", "romantic")
song4 = Song.new(art1, "la la la la", "romantic")
song5 = Song.new(art2, "doot doot beep", "pop")
song6 = Song.new(art3, "its music", "pop")

art3.new_song("new song", "pop")



songs_test = art1.songs
puts("Song all test is :  #{songs_test}")

genres_test = art1.genres
puts("Genres for the artist test is :  #{genres_test}")


puts "Genres.all is:  #{Genre.all}"
puts "Genres.all_genre_names is: #{Genre.all_genre_names}"

puts("Genre.all[0].songs is :  #{Genre.all[0].songs}")	 #  [false, false, false,

#var1 = "pop".artists