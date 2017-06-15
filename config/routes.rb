Rails.application.routes.draw do
 devise_for :users

 
  get 'home/index'

  resources :companies
  resources :user_roles
  resources :user_regions
  resources :regions
  resources :countries
  resources :states
  resources :cities
  resources :images
  resources :places
  resources :nodes
    resources :pages
      resources :sites



root 'home#index'
  
  
 #root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
