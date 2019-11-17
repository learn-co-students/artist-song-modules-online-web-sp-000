module Findable
  
  
  ### need to find a generic way to refer to all instances of a class without using a specific variable.
  def find_by_name(name)
    self.all.detect{|a| a.name == name}
  end
  
end 