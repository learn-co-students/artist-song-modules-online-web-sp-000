require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@all = []

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods


  # def initialize
  #   @@all << self
  # end

  # def self.find_by_name(name)
  #   self.all.detect{|a| a.name == name}
  # end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
