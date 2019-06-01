require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable

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
