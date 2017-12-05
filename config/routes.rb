Rails.application.routes.draw do

  resources :categories
  resources :products


  resources :categories do
  resources :products
  end

  resources :products do
  resources :categories
 end

  root 'products#index'
end
