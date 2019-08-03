require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Findable::ClassMethods, Memorable::ClassMethods
  include Paramable::InstanceMethods, Memorable::InstanceMethods

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end


end
