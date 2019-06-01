require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

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
