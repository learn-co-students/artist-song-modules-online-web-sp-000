module Findable
  module ClassMethods
    def find_by_name(name)
      self.all.detect {|a| a.name = a}
    end
  end
end
