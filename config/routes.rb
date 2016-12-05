Rails.application.routes.draw do
	resources :merchants do
		resources :products, only: [:new, :create, :update, :destroy]
	end
	#READ ON NESTED RESOURCES
	resources :users
	resources :products, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
