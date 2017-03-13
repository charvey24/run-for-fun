Rails.application.routes.draw do
  
  root 'home#home'
  match 'about', to: 'about#about', via: :get
  match 'blog', to: 'blog#blog', via: :get
  match 'shop', to: 'shop#shop', via: :get
  
end
