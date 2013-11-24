Sportal::Application.routes.draw do
 
 
  resources :users

  resources :meetings


  resources :sports


  devise_for :users

root to: 'static_pages#home'

match '/dashboard', to: 'static_pages#dashboard' 
end
