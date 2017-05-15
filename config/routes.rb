Rails.application.routes.draw do

    #routes for nyc historical sites index.json.jbuilder
	namespace :api do
	    namespace :v1 do
	      get '/houses' => 'houses#index'
	    end
	end

	get '/sites' => 'sites#index'
	get '/' => 'sites#new'
	get '/sites' => 'sites#new' #this could also be the center_point#create route
	post '/sites' => 'sites#create' #this was commented out
	#post '/api/v1/sites' => 'api/v1/center_point#index' #this was not commented out
	get '/sites' => 'sites#show' #this was commented out

	#routes for signing up a new user
	#get "/signup" => "users#new"
 	#post "/users" => "users#create"

 	#routes for nys historical sites index.json.jbuilder
	namespace :api do
	  	namespace :v1 do
		  get '/sites' => 'sites#index'
		  get '/sites' => 'sites#show'
		end
	end

	#routes for the center point api. This may become handy in the future...
	namespace :api do
		namespace :v1 do
		  ##get '/center_point' => 'center_point#index'
		  ##post '/center_point' => 'center_point#index'
		  #get '/center_point' => 'center_point#new'
		  #post '/center_point' => 'center_point#create'
 		  #get 'center_point/show' => 'center_point#show'

		end
	end

	#get '/locations' => 'locations#index'
	#get '/locations' => 'locations#show'
	#get '/users' => 'users#new'
	#get '/users' => 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#the first route takes us to the main controller
end
