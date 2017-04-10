Rails.application.routes.draw do
  root 'home#home'
  
  get '/about', to: 'about#about'
  get '/blog', to: 'blog#blog'
  get '/shop', to: 'shop#shop'
  get '/login', to: 'sessions#new'
  
  resources :users
  resources :microposts, only: [:create, :destroy]
end
