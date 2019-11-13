module Paramable 
  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end
end

#It finds all instances of the matched string and replaces it with #the new argument. The method takes two arguments. The first is the #text you want to replace and the second is the new text.
