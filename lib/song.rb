require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable

  @@songs = []

  def initialize
    @@songs << self
    #Pushes the instance created to an array of all songs
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
    #Iterates through the all songs array to find a song based on a name given
  end

  def self.all
    @@songs
    #The All array
  end

 # def self.reset_all
  #  self.all.clear
    #Clears all the songs out of the All array
  #end

  #def self.count
   # self.all.count
    #Counts all the songs in the All (songs) array
  #end

  def artist=(artist)
    @artist = artist
    #Sets the artist variable to an artist given as an argument
  end

  def to_param
    name.downcase.gsub(' ', '-')
    #Assuming it reformats from a file name? I guess? 
  end
end
