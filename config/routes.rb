Rails.application.routes.draw do

  resources :users
  resources :categories
  resources :products
  resources :customers
  resources :orders
  resources :product_orders
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'signup', to: 'users#new'
  delete 'logout', to: 'sessions#destroy'
  post 'users', to: 'users#create'


  root 'products#index'
end
