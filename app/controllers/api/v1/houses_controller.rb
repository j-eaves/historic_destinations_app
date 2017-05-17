class Api::V1::HousesController < ApplicationController
  require 'geocoder'
  def index
	@historic_sites_nyc = HistoricSitesNyc.all
	p "*"*50
	puts "FROM HOUSES CONTROLLER"
	# puts "FIRST HOUSE FROM DB - FROM HOUSES CONTROLLER"
	# p @historic_sites_nyc.first
	p "*"*50
	render 'index.json.jbuilder'
  end
end
