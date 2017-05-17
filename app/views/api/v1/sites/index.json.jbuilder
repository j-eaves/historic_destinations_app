json.array! @historic_sites.each do |site|
	json.name site.name
	json.address site.address
	json.phone site.phone
	json.description site.description
	json.url site.url
	json.latitude site.latitude
	json.longitude site.longitude
	json.image_url site.image_url
	json.alt_image_url site.alt_image_url
	json.category site.category
	json.county site.county
	json.region_number site.region_number
end