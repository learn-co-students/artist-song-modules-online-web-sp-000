module Memorable
  
  def reset_all #omit the self when defining class methods inside a module 
    all.clear
  end
  
  def count
    all.count
  end
end