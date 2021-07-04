module Memorable
  #self keyword is omitted when defining class methods inside modules
  module ClassMethods
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
