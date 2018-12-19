require 'pry'

require_relative './concerns/memorable'
require_relative './concerns/findable'
require_relative './concerns/paramable'


class Song
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
