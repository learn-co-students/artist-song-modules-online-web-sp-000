require 'pry'

class Song
  extend Memorable
  extend Findable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end

require 'pry'

class Artist
  
  extend Memorable
  extend Findable
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end

module Findable
  
  
  ### need to find a generic way to refer to all instances of a class without using a specific variable.
  def find_by_name(name)
    binding.pry
    self.all.detect{|a| a.name == name}
  end
  
end 

module Memorable
  
  def reset_all
    all.clear
  end

  def count
    all.count
  end
  
end

require 'pry'

require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/memorable'
# require_relative '../lib/concerns/paramable'

require_relative '../lib/artist.rb'
require_relative '../lib/song.rb'
