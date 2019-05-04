#require_relative './config/environment.rb'

module Paramable
    def to_param
      name.downcase.gsub(' ', '-')
    end
end
