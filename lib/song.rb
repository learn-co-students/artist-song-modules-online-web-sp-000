require 'pry'

class Song
  extend Findable
  include Paramable
  
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []


  def self.all
    @@songs
  end


# method to get artist from Artist class (song.artist = self)
  def artist=(artist)
    @artist = artist
  end

end
