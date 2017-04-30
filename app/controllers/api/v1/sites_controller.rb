class Api::V1::SitesController < ApplicationController
	def index
		@historic_sites = NyStatePark.all
		render 'index.json.jbuilder'
	end
	def show
		@historic_site = NyStatePark.find_by(id: params[:id])
		#render 'show.html.erb'
		#render 'show.json.jbuilder'
	end
end