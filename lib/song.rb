require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  extend Findable

  def self.all
    @@songs
  end

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  def artist=(artist)
    @artist = artist
  end

  include Paramable
#binding.pry
end
