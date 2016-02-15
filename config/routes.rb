Rails.application.routes.draw do
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
 
  root 'static_pages#home'
  get "/about", to: "static_pages#about"
  match "/help", to: "static_pages#help", via: "get"
  match "/signup", to: "users#new", via: "get"
  match "/signup", to: "users#create", via: "post" 
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signin',  to: 'sessions#create',         via: 'post'
  match '/signout', to: 'sessions#destroy',     via: 'delete'


end