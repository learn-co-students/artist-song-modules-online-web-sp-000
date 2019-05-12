module Findable
def find_by_name(name)
  @all = self.all
  @all.detect{|a| a.name == name}
end
end
