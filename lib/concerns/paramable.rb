module Paramable
  module InstanceMethods
    def to_param                    #converts :name to a url friendly parameter
      name.downcase.gsub(' ', '-')
    end
  end
end
