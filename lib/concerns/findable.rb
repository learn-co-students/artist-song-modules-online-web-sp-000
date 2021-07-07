module Finadable
  
  
  def find_by_name(name)
    self.class.all.detect{|a| a.name == name}
  end
 
  def all
    self.class.all
  end
  
end