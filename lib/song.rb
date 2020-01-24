require 'pry'




class Song
  
  
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods


  @@all_instances = []

  def initialize
    @@all_instances << self
  end

  # def self.find_by_name(name)
  #   @@all_instances.detect{|a| a.name == name}
  # end

  def self.all
    @@all_instances
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
