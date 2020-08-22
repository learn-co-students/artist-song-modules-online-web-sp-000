module Memorable
  module ClassMethods

      def reset_all
        all.clear
      end

      def count
        binding.pry
        all.count
      end

    end


  module InstanceMethods

    def initialize
      #initialize is an instance or class method?
      #instance. thats how u can give attributes of that instance
      # to call the CLASS variable in an instance method we have to call the class and then that class method that gives the @@ class variable
      #like Artist.all or Song.all
      #but to abstract it away, we need something like this: <ClassName>.all. what do we do?
      # we use
      self.class.all << self
      #self.class gives u the class of the instance
    end


  end


end
