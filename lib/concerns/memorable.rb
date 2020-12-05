module Memorable 
  module ClassMethods
    def reset_all
      all.clear 
    end 
    
    def count
      return all.length
    end
  end
  module InstanceMethods
    def initialize
      self.class.all.push(self)
    end
  end
end