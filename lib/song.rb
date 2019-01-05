require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramable
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  #replaced in findable.rb with one modification
  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end
  
  #replaced in memorable.rb as is
  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  #end

  def artist=(artist)
    @artist = artist
  end

  #replaced in paramable.rb
  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
