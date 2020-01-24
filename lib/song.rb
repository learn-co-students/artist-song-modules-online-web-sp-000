require 'pry'




class Song
  
  
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods


  @@Songs = []

  # def initialize
  #   @@Songs << self
  # end

  # def self.find_by_name(name)
  #   @@Songs.detect{|a| a.name == name}
  # end

  def self.all
    @@Songs
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

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
