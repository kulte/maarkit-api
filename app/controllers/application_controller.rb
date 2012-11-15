class ApplicationController < ActionController::Base
  protect_from_forgery

  def foursquare_api
  	client = Foursquare2::Client.new(:client_id => ENV['foursquare_client_id'], :client_secret => ENV['foursquare_client_secret'])
  end
end
