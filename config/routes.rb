Rails.application.routes.draw do
  resources :users
  #get "users/new"
  match '/signup',  :to => 'users#new', via: [:get] 
  match '/contact', :to => 'pages#contact' , via: [:get] 
  match '/about',   :to => 'pages#about', via: [:get] 
  match '/help',    :to => 'pages#help', via: [:get] 
  get "users/show/:id",:to => 'users#show'
  root :to => 'pages#home'

end
