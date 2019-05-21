module Findable
  def find_by_name(name)
    all.detect {|finder| finder.name == name}
  end
end
