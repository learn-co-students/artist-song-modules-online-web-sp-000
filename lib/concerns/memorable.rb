

module Memorable
  
  module ClassMethods #no need to add self in the beginning to account as a class method. (CAN BE VERY CONFUSING IF USED INCORRECTLY)
  
    def reset_all
      all.clear
    end
  
    def count
      all.count
    end
  
  end
  
  module InstanceMethods
    
    def initialize
      self.class.all << self
    end
    
  end
end