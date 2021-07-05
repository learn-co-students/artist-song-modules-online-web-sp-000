module Memorable
  
  module ClassMethods
    def reset_all
      all.clear
    end

    def count
      all.count
    end



# @@artists << self
# @@songs << self
# We can call self.class.all inside .initialize and it will be just as if we called Song.all or Artist.all. 

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
  
# The super keyword, placed inside a method, will tell that method to look up its behavior in the method of the same name that lives in the parent, or super, class

#  def initialize
#    super   <----- added to artist.rb
#    @songs = []
#  end

# When we include a module in a class, we are really telling that class to inherit methods from that module.
end



# We can nest sets of modules within one another and then include or extend individual modules as needed. 

# Then, in order to include or extend as needed, we use the include or extend keyword in the following manner:

#In both the Song and Artist classes:
# -> extend Memorable::ClassMethods
# -> include Memorable::InstanceMethods