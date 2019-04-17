module Findable

  def find_by_name(Findable)
    all.detect{|a| a.name == name}
  end

end
