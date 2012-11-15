class Maark < ActiveRecord::Base
	before_validation :set_foursquare_data

  attr_accessible :address, :category, :city, :cross_streets, :latitude, :longitude, :name, :photo_url, :user_id, :foursquare_id, :state

  belongs_to :user

private
	def set_foursquare_data
		foursquare_api = Foursquare2::Client.new(:client_id => ENV['foursquare_client_id'], :client_secret => ENV['foursquare_client_secret'])
		location = foursquare_api.venue(self.foursquare_id)

		self.name = location.name
		self.category = location.categories.first.shortName
		self.photo_url = location.photos.groups[1].items[0].url
		self.address = location.location.address
		self.cross_streets = location.location.crossStreets
		self.city = location.location.city
		self.state = location.location.state
		self.latitude = location.location.lat
		self.longitude = location.location.lng
	end
end
