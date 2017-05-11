# index.json.jbuilder 
json.array! @historic_sites.each do |site|
	json.name site.name
	json.category site.category
	json.county site.county
	json.url site.url
	#json.location site.location.coordinates[0], site.location.coordinates[0]
	json.latitude site.latitude
	json.longitude site.longitude
	json.region_number site.region_number
end
