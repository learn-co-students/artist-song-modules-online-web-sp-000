module Paramable

module InstanceClasses


  def to_param
    name.downcase.gsub(' ', '-')
  end






end
end
