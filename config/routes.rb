Rails.application.routes.draw do
  devise_for :users
  get 'orders/index'

  root "orders#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create]
  resources :orders, only: [:index, :new, :create]
end
