class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def create
		data = Koala::Facebook::API.new(params[:token])
		profile = data.get_object("me")
		@user = User.find_or_create_by_fb_uid(:fb_uid => profile["id"], :first_name => profile["first_name"], :last_name => profile["last_name"], 
			:current_city => profile["location"]["name"], :email => profile["email"], :fb_access_token => params[:token], 
			:photo_url => data.get_picture("me", :type => "square"))
	end
end
