Sportal::Application.routes.draw do
 
	resources :meetings do
	     collection do
	      match 'search' => 'meetings#search', via: [:get, :post], as: :search
	     end
	  end
 
 
	  # resources :users, only: [:show, :edit, :update]

	  resources :user_meetings
	  resources :meetings
	  resources :user_sports
	  

	  resources :sports


	  devise_for :users

		root to: 'static_pages#home'

		match '/match', to: 'meetings#match' 
		match '/list', to: 'users#list' 
		match '/dashboard', to: 'user#dashboard', as: "user_root"
		match '/search', to: 'meetings#search'
		match '/profile/:id', to: 'user#show', as: "profile"
end
