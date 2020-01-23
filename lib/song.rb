require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  include Memorable::InstanceMethods

  extend Findable
  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  extend Memorable::ClassMethods

  def artist=(artist)
    @artist = artist
  end

  include Paramable
  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
