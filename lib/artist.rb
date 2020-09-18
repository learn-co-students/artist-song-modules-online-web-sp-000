require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable

  @@artists = []

  def initialize
    @@artists << self
    #Pushes instance into array of all artists on initialization
    @songs = []
    #Creates an empty array for the artist's songs
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
    #Finds the artist by name matching within the array of all artists
  end

  def self.all
    @@artists
    #The All array
  end

  #def self.reset_all
   # self.all.clear
    #Resets/Clears all data in the All array
  #end

  #def self.count
   # self.all.count
    #Counts how many artists are in the All array
  #end

  def add_song(song)
    @songs << song
    song.artist = self
    #Adds a song to the artist's songs array and sets the song's artist to the artist instance
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
    #Adds each song in the songs array?
  end

  def to_param
    name.downcase.gsub(' ', '-')
    #Looks like it converts a file of some kind.
  end
end
