module PARAMABLE
  
  def to_paramable
    name.downcase.gsub(' ', '-')
  end
end