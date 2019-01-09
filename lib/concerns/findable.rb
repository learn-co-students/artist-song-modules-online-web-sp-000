module Findable
  module ClassMethods
    def find_by_name
      self.all.detect { |x| x.name == name}
    end
  end



end
