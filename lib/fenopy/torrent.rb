module Fenopy
	class Torrent
		attr_accessor :name, :size, :page, :url, :magnet, :hash, :category, :seeders, :leechers

		def initialize(options)
			self.name 		= options[:name]
			self.size 		= options[:size]
			self.page 		= options[:page]
			self.url 			= options[:torrent]
			self.magnet 	= options[:magnet]
			self.hash 		= options[:hash]
			self.category = options[:category]
			self.seeders  = options[:seeder]
			self.leechers = options[:leecher]
		end

	end
end