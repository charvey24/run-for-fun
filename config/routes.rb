Rails.application.routes.draw do
  get 'sessions/new'
  
  root 'home#home'
  
  get '/about', to: 'about#about'
  get '/blog', to: 'blog#blog'
  get '/shop', to: 'shop#shop'
  
  resources :users
end
