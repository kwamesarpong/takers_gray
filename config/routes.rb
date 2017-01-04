Rails.application.routes.draw do
  #Prefixing; I think is what's happening here...
	  get '/login',		to: 'sessions#new' # any time a routing error related to controller chaeck HERE
	  post '/login',	to: 'sessions#create'
	  delete '/login',	to: 'sessions#destroy'

	resources :merchants do
		member do  	# A member depends on the id presented to generate a view. 
					# So it acts on a single object. In this case, the single merchant
			get :products 
		end
		resources :products, only: [:show, :new, :create, :update, :destroy]
	end
	#READ ON NESTED RESOURCES
	resources :users do
		
		member do

			get :user_rating
			get :purchases
		end
		resources :purchases
	end

	resources :products, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
