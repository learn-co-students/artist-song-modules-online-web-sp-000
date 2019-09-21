



module Findable 
  
  def find_by_name 
    
    @@songs.detect{|a| a.name == name}
  
  end 

end 