module Memorable
  module ClassMethods 
    def reset_all #change from self.reset_all since self keyword omitted when defining class methods inside modules
      self.all.clear
    end
  
    def count #change from self.count since self keyword omitted when defining class methods inside modules
      self.all.count
    end
  end 
  
  module InstanceMethods
    def initialize
      self.class.all << self
    end 
  
  end 
  

end 