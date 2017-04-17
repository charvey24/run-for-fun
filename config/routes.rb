Rails.application.routes.draw do
  resources :microposts
  root 'home#home'
  
  get '/about', to: 'about#about'
  get '/index', to: 'microposts#index'
  get '/shop', to: 'shop#shop'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :microposts, only: [:create, :destroy]
end
