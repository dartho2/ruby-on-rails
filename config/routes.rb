Rails.application.routes.draw do

  resources :users
  resources :categories
  resources :products
  resources :customers
  resources :orders
  resources :product_orders
  resources :users





  root 'products#index'
end
