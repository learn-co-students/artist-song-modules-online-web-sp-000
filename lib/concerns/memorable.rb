#using this module to fufill Dont Repeat Yourself.
#connects itself to artist and song via :: inheritance

module Memorable

  #the methods were replacing
    # def self.reset_all
    #   self.all.clear
    # end
    #
    # def self.count
    #   self.all.count
    # end

  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
     self.all.count
    end
  end


  module InstanceMethods
    def initialize
    self.class.all << self
    end
  end
 end
