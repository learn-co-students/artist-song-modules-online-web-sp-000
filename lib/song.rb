require 'pry'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'

class Song

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end


  def self.all
    @@songs
  end

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
extend Findable
extend Paramable

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
