class VenueSearchController < ApplicationController
	def index
		@venues = foursquare_api.search_venues(:query => params[:query].gsub(" ", "_"), :ll => params[:ll]).groups.first.items
	end
end
