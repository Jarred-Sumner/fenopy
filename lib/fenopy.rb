require "fenopy/version"
require 'fenopy/torrent'
require 'json'
require 'nestful'

module Fenopy
 	BASE_URL = "http://fenopy.eu/module/search/api.php"

	# Search Fenopy for torrents. For options, see their API - http://fenopy.eu/info/api.html	
 	def self.search(query, options = {}) 
 		options = {} if options.nil?
 		options[:format] = 'json'
 		options[:keyword] = query
 		JSON.parse(Nestful.get(BASE_URL, :params => options)).collect { |torrent| Torrent.new(torrent) }
	end
end
