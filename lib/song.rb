require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  #@@songs = []
  @@all = []

 def initialize
    @@artists << self 
    @songs = []
  end
  
  extend Memorable::ClassMethods 
  extend Findable 
  include Memmorable::InstanceMethods 
  include Paramable 

  def self.all
    #@@songs
    @@all 
  end

  def artist=(artist)
    @artist = artist
  end
end
