require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  @@artists = []

  def self.all
    @@artists
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  def initialize
    super
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song.artist = self unless song.artist
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end