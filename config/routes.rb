Rails.application.routes.draw do

  resources :categories
  resources :products
  resources :customers
  resources :orders
  resources :product_orders

  root 'products#index'
end
