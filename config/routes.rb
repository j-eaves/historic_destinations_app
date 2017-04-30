Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#the first rout takes us to the main controller
	get '/sites' => 'sites#index'

	namespace :api do
	  	namespace :v1 do
		  get '/sites' => 'sites#index'
		  get '/sites/:id' => 'sites#show'
		end
	end
end
