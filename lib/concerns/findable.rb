module Findable

  def find_by_name(name)
    all.detect{|a| a.name == name}
  end

end

# def self.find_by_name(name)
#   @@songs.detect{|a| a.name == name}
# end
