module Findable
  def find_by_name(name)
  all.detect do |e|
  e.name == name
end
end
end

class Artist
  extend Findable
end

class Song
  extend Findable
end
