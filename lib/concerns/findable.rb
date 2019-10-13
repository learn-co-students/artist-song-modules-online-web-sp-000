module Findable
 module ClassMethods
  def find_by_name(name)
    self.all.select {|song| song.name == self}
  end
end
end