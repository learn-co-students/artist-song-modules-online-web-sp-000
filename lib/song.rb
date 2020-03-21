require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  
  attr_accessor :name, :artist

  @@songs = []

  def self.all
    @@songs
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
