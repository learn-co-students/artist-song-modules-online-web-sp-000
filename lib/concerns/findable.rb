module Findable
  def find_by_name(name)
    all.detect {|inst| inst.name == name}
  end
end
