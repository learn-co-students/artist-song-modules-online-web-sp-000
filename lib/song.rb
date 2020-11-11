class Song
	extend Memorable::ClassMethods, Findable::ClassMethods
	include Paramable::InstanceMethods, Memorable::InstanceMethods

	attr_accessor :name, :artist

	@@songs = []

	def self.all
		@@songs
	end
end
