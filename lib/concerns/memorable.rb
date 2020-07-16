module Memorable
  module ClassMethods #Instead of building a brand new module to house this code from our '.initialize' methods, we need to think about behavior of code
    def reset_all     #it's responsible for telling a class to keep track of its' own instances, which is similar behavior to 'reset_all'&'count'methods
      self.all.clear   #already in 'Memorable' module. Nest the 'InstanceMethods'module in the Memorable module.
    end               #we can 'include' or 'extend' individual modules as needed

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
