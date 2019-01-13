require 'pry'

class Song
  include Memorable::InstanceMethods
  include Paramable
  extend Findable
  extend Memorable::ClassMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
