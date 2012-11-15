json.venues @venues do |json, venue|
	json.name venue.name
	json.address venue.location.address unless venue.location.address.nil?
	json.id venue.id
end
