class MaarksController < ApplicationController
	respond_to :json

	def index
		@maarks = Maark.all
		respond_with @maarks
	end

	def show
		@maark = Maark.find(params[:id])
	end

	def create
		respond_with Maark.create(:foursquare_id => params[:foursquare_id])
	end

	def destroy
		@maark = Maark.find(params[:id])
		@maark.destroy
	end
end
