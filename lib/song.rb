require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  extend Paramable::ClassMethods
  include Memorable::InstanceMethods
  include Findable::InstanceMethods
  include Paramable::InstanceMethods
  
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
