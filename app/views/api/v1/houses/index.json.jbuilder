json.array! @historic_sites_nyc.each do |site|
	json.name site.name
	json.address site.address
	json.park_name site.park_name
	json.phone site.phone
	json.description site.description
	json.accessible site.accessible
	json.historic_house_trust_website site.historic_house_trust_website
	json.url site.url
	json.latitude site.latitude
	json.longitude site.longitude
	json.property_id site.property_id
	json.image_url site.image_url
end

##From my table:
# name: historic_site[:Name], 
# location: historic_site[:Location], 
# park_name: historic_site[:Park_Name], 
# phone: historic_site[:Phone], 
# description: historic_site[:Description], 
# accessible: historic_site[:Accessible], 
# historic_house_trust_website: historic_site[:HHT_webpage], 
# house_website: historic_site[:House_Site])