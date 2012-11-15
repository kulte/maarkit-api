json.id @user.id
json.first_name @user.first_name
json.last_name @user.last_name
json.email @user.email
json.current_city @user.current_city
json.photo_url @user.photo_url

json.maarks @user.maarks do |maark|
	json.id maark.id
	json.name maark.name
	json.foursquare_id maark.foursquare_id
	json.photo_url maark.photo_url
	json.address maark.address
	json.cross_street maark.cross_street
	json.latitude maark.latitude
	json.longitude maark.longitude
	json.city maark.city
	json.state maark.state
	json.category maark.category
end
