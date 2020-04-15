module Findable
  def find_by_name(name)
    all.detect{|x| x.name == name}
    #self.all.detect{|x| x.name == name} // works as well 
  end
end
