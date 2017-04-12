Rails.application.routes.draw do
  root 'home#home'
  
  get '/about', to: 'about#about'
  get '/blog', to: 'blog#blog'
  get '/shop', to: 'shop#shop'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :microposts, only: [:create, :destroy]
end
