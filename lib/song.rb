class Song

attr_accessor :name
  attr_reader :artist
  
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods


  @@songs = []

  def self.all
    @@songs
  end

  def initialize
    self.class.all << self
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
  
end