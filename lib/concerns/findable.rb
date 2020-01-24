
module Findable

    module ClassMethods

        def find_by_name(name)
            @@all_instances.detect{|a| a.name == name}
        end

    end

end


