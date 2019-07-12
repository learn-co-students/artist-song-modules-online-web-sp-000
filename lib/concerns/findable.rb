module Findable

  def find_by_name(name)             #=> from artists
    self.all.detect{|a| a.name == name}
  end

end
