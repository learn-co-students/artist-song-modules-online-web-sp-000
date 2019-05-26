module Findable
   
   def find_by_name(name)
    Artists.detect{|a| a.name == name}
  end
  
  def find_by_name(name)
    Songs.detect{|a| a.name == name}
  end
end