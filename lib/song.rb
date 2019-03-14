require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  def self.all
    @@songs
  end
  
  def self.count
    self.all.count
  end

  def artist=(artist)
    @artist = artist
  end

  include Paramable
end
