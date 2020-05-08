Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'photo_uploads/new'
  resources :employees
  resources :clients
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products do
    resources :photo_uploads, only: [:new, :create, :destroy]
  end
  resources :categories
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
