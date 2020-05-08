Rails.application.routes.draw do
  resources :about, only: :index
  resources :flavors
  resources :fillings
  devise_for :users
  resources :users
  get 'photo_uploads/new'
  resources :employees
  resources :clients
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products do
    resources :photo_uploads, only: [:new, :create, :destroy]
  end
   get '/product/promotions' => 'products#promotions'
  resources :categories
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
