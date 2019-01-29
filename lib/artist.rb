require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    #@@artists << self
    super
    @songs = []
  end

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
=begin
  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end
=end
  def self.all
    @@artists
  end
=begin
  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
=end
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
=begin
  def to_param
    name.downcase.gsub(' ', '-')
  end
=end
end
