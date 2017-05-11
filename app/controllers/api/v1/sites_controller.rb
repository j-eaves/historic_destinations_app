class Api::V1::SitesController < ApplicationController
	require 'geocoder'
	def index
		@historic_sites = NyStatePark.all
		p "*"*50
		puts "FROM SITES CONTROLLER"
		puts "FIRST SITE FROM DB - FROM SITES CONTROLLER"
		p @historic_sites.first
		p "*"*50
		render 'index.json.jbuilder'
	end

	# def create
	# 	# @historic_site = NyStatePark.find_by(id: params[:id])
	# 	@address = params[:search_address]
	# 	# puts @address
	# 	# puts "#{@address}"
	# 	@coordinates = Geocoder.coordinates(search_address: params[:search_address])
	# 	# @longitude = Geocoder.coordinates("#{@address}")[1]
	# 	puts @coordinates
	# 	# puts @longitude
	# 	# redirect_to '/sites'
	# 	#render 'show.html.erb'
	# 	render 'show.json.jbuilder'
	# end
end