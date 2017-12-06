Rails.application.routes.draw do

  resources :categories
  resources :products
  resources :customers
  resources :orders


  root 'products#index'
end
