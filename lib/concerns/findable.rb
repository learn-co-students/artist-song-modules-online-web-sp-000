module Findable

  def find_by_name(term)
    all.detect do |item|
      item.name == term
    end
  end

end
