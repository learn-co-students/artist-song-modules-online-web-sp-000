module Memorable
  #self keyword is omitted when defining class methods inside modules
  def reset_all
    all.clear
  end

  def count
    all.count
  end

end
