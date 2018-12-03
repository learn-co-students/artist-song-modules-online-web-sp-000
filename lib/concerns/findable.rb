module Findable
  module ClassMethods
    def find_by_name(name)
      all.detect do |obj|
        obj.name = name
      end
    end
  end

  module InstanceMethods

  end
end
