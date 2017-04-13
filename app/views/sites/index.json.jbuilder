# index.json.jbuilder 
json.array! @historic_sites.each do |site|
	site
	#json.name site.name
	# json.category site.category
	# json.county site.county
	# json.facitlity_url site.facitlity_url
	# json.location site.location.coordinates[0], site.location.coordinates[0]
	# json.region site.region
end
