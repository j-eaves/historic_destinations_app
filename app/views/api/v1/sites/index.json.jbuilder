json.array! @historic_sites.each do |site|
	json.name site.name
	json.address site.address
	json.category site.category
	json.county site.county
	json.url site.url
	json.description site.description
	#json.location site.location.coordinates[0], site.location.coordinates[0]
	json.latitude site.latitude
	json.longitude site.longitude
	json.region_number site.region_number
	json.image_url site.image_url
end