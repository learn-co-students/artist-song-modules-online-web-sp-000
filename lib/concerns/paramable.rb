module Paramable
  module InstanceMethods
    def to_param
      self.name = name.downcase.gsub(" ", "-")
    end
  end
end
