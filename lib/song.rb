require 'pry'

class Song
  extend Memorable::ClassMethods
   include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   self.class.all << self
  #   # @@songs << self
  # end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end
   #is in artist
  # def self.reset_all
  #   self.all.clear
  # end
    #is in artist
  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end
#is in artist
  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
