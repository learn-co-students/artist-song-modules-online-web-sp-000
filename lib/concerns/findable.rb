module Findable
  
  module ClassMethods
  
  def find_by_name(name)
    Artist.detect{|a| a.name == name}
  end 
end 
end 