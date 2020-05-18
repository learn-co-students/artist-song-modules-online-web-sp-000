module Memorable

  def count
    all.count
  end

  def reset_all
    all.clear
  end
end

class Artist
  extend Memorable
end

class Song
  extend Memorable
end
