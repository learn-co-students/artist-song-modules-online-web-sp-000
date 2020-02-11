module Findable

  module ClassMethods
      def find_by_name(name)
        self.all.detect{|a| a.name == name} #self.all refers to all the instances of the class
      end
  end

end
