module Memorable

  module ClassMethods
    # @@all = []
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end

    # def all
    #   @@all
    # end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end

end
