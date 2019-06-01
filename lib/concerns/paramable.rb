module Paramable
  
# searches for ' ' inside name and returnes name with replaced ' ' to '-'
  
    def to_param
      name.downcase.gsub(' ', '-')
    end
end