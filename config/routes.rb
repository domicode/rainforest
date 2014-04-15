Rainforest::Application.routes.draw do
  # get "reviews/show"
  # get "reviews/new"
  # get "reviews/edit"
  # get "sessions/new"
  # get "sessions/create"
  # get "sessions/destroy"
  # get "users/new"
  # get "users/create"
  # get "new/create"
  # resources :products
  resources :products do 
    resources :reviews, :except => [:index, :new]    
  end
  #resources :reviews, :only => [:index]
  resources :users, :only => [:new, :create]
  resources :sessions, :only => [:new, :create, :destroy]
  root to: "products#index"
  end
