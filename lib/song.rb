require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramble

  @@songs = []
  
  def self.all
    @@songs
  end
  
  def artist=(artist)
    @artist = artist
  end

end
