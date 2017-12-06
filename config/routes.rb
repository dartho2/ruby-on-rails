Rails.application.routes.draw do

  resources :categories
  resources :products
  resources :customers

  root 'products#index'
end
