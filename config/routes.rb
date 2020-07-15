Rails.application.routes.draw do
  devise_for :users
  get 'orders/index'

  root "orders#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create]
  resources :orders, only: [:index, :new, :create, :update, :show, :edit] do
    collection do
      get 'history'
      get 'search'
    end
    member do
      get 'edauthority'
      patch 'update_detail'
      patch 'up_edauthority'
    end
  end
end

