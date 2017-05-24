class SitesController < ApplicationController
	require 'geocoder'
	
	def index
	end

	def new
		# render 'new.html.erb'
	end

	def create
		# @address = params[:search_address]
		# if @address.length > 0
		# 	p "*"*50
		# 	puts "ADDRESS FROM SITES CONTROLLER"
		# 	puts @address
		# 	p "*"*50
		# 	@coordinates = Geocoder.coordinates(@address)
		# 	@place = Geocoder.search(@address)
		# 	p "*"*50
		# 	puts "COORDINATES FROM SITES CONTROLLER"
		# 	#p @coordinates
		# 	#p @place
		# 	p "*"*50
		# 	@lat = @coordinates[0]
		# 	@lng = @coordinates[1]
		# 	render 'show.html.erb'
		# else
		# 	redirect_to '/'
		# end
		#redirect_to '/sites/show'
	end
	def show
		#@historic_site = NyStatePark.find_by(id: params[:id])
		# render 'show.html.erb'
		#render 'show.json.jbuilder'
	end
end
