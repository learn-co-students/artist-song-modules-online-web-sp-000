require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

 @@artists = []
  
   def initialize
    @@artists << self
  end
  
  extend Memorable::ClassMethods 
  extend Findable 
  include Memmorable::InstanceMethods 
  include Paramable 
  
  def self.all
    #@@artists
    @@all 
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
