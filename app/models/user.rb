class User < ActiveRecord::Base
  attr_accessible :current_city, :email, :fb_access_token, :fb_uid, :first_name, :last_name, :photo_url
  has_many :maarks
end
