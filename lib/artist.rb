require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end


  def add_song(song)
    @songs << song
    song.artist = self
  end

# takes multiple songs array and loops through each and adds to @songs and gives self as artist
  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

# searches for ' ' inside name and returnes name with replaced ' ' to '-'
#  def to_param
#    name.downcase.gsub(' ', '-')
#  end
end
