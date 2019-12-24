module Memorable
	module CMethods
		def find_by_name(name)
			all.detect{|a| a.name == name}
		end

		def reset_all
		  all.clear
		end

		def count
		  all.count
		end
	end

	module IMethods
		def to_param
	    name.downcase.gsub(' ', '-')
	  end

	  def initialize
	    self.class.all << self
	  end
	end
end