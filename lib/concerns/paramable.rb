module Paramable
  def to_param
    name.downcase.gsub(' ', '-')
  end

end

class Song
  include Paramable
end

class Artist
  include Paramable
end
