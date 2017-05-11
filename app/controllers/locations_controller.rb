class LocationsController < ApplicationController
	
	def index
	  if params[:search].present?
	    @locations = Location.near(params[:search], 50, :order => :distance)
	  else
	    @locations = Location.all
	  end
	  render 'index.html.erb'
	end
	def edit
		
	end
	def show
		render 'show.html.erb'
	end
end
