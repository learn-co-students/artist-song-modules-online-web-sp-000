module Findable
    module ClassMethods
        
        #        def all
        #   ObjectSpace.each_object(self).to_a
        #end
        
        def find_by_name(name)
            self.all.detect {|a| a.name == name}
        end
    end
end
