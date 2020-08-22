require 'pry'
#As we start to build larger and more complex programs, it begins to make sense to handle all of our requirements in one place

 require_relative '../lib/concerns/findable'
 require_relative '../lib/concerns/memorable'
 require_relative '../lib/concerns/paramable'
#the order of what u rquire matters here
require_relative '../lib/artist.rb'
require_relative '../lib/song.rb'
