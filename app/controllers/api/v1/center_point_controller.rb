class Api::V1::CenterPointController < ApplicationController
  require 'geocoder'
  # def index
  # 	render 'index.json.jbuilder'
  # end

  def new 
  	render 'new.json.jbuilder'
  end
  def create
    address = params[:search_address]
    p "*"*50
    puts "ADDRESS FROM CENTER POINT CONTROLLER CREATE ACTION"
    puts address
    p "*"*50
    @coordinates = Geocoder.coordinates(address)
    p "*"*50
    puts "COORDINATES FROM CENTER POINT CONTROLLER"
   	p @coordinates
   	p "*"*50
   	#render 'show.json.jbuilder'
    redirect_to "center_point/show"
  end

  def show
  	render 'show.json.jbuilder'
  end
end
