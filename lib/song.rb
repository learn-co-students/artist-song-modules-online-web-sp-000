require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.initialize
    self.class.all << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  extend Memorable
  extend Findable
  include Paramable
end
