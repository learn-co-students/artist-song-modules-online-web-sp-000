require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

<<<<<<< HEAD
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
=======
  extend Memorable#::ClassMethods
>>>>>>> f407140d43153ff38165dc835d36037858f6c736

  @@artists = []

  def initialize
    super 
    @songs = []
  end

  def self.all
    @@artists
  end

<<<<<<< HEAD
=======
  def self.reset_all
    self.all.clear
  end

#  def self.count
#    self.all.count
#  end

>>>>>>> f407140d43153ff38165dc835d36037858f6c736
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
