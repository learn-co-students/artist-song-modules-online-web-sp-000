# require_relative '../lib/concerns/paramable'
module Paramable
  module InstanceMethods
  def to_param
    name.downcase.gsub(' ', '-')
  end
end 
end