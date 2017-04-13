class SitesController < ApplicationController
  def index
  	@historic_sites = Unirest.get('https://data.ny.gov/resource/ufat-zvgh.json').body
  	#@historic_sites = NyStatePark.all
    render 'index.html.erb'
    #render 'index.json.jbuilder'
  end
end