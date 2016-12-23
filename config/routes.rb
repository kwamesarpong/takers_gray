Rails.application.routes.draw do
	resources :merchants do
		member do  	# A member depends on the id presented to generate a view. 
					# So it acts on a single object. In this case, the single merchant
			get :products 
		end
		resources :products, only: [:show, :new, :create, :update, :destroy]
	end
	#READ ON NESTED RESOURCES
	resources :users do
		
		resources :user_rating
		
	end

	resources :products, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
