# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Create a table of state parks, using the API in the parentheses
# historic_sites = Unirest.get('https://data.ny.gov/resource/ufat-zvgh.json').body
# historic_sites.each do |site|
# 	state_park = NyStatePark.new(
# 		name: site['name'],
# 		category: site['category'],
# 		county: site['county'],
# 		url: site['facility_url'],
# 		longitude: site['location']['coordinates'][0],
# 		latitude: site['location']['coordinates'][1],
# 		region_number: site['region']
# 		)
# 	state_park.save
# end
##Update your state parks, using the data in the URL in the parentheses
##I used this to switch the data in the latitude/longitude keys, since I had them reversed
historic_sites = Unirest.get('https://data.ny.gov/resource/ufat-zvgh.json').body
historic_sites.each do |site|
	NyStatePark.all.find_by(name: site['name']).update(
		#name: site['name'],
		#category: site['category'],
		#county: site['county'],
		#url: site['facility_url'],
		longitude: site['location']['coordinates'][0],
		latitude: site['location']['coordinates'][1],
		#region_number: site['region']
		)
end