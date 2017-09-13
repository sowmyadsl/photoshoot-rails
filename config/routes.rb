Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "home#index"
  devise_for :users

  resources :home, only: [:index]

  resources :contacts, only: [:new]
    get "/contact", to: "contacts#new", as: "contacts"
    post "/contact", to: "contacts#new"

  resources :services do
    resources :reviews
  end


end
