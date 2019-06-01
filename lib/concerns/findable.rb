module Findable

# runs .all method (that returns @@array), then it loops and returns the first match object name  with argument name 

  def find_by_name(name)
    all.detect{|a| a.name == name}
  end
  
end