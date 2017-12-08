Rails.application.routes.draw do

  resources :categories
  resources :products
  resources :customers
  resources :orders
  resources :orders
  resources :product_orders

  resources :orders do
    resources :products
  end

  root 'products#index'
end
