Rails.application.routes.draw do
  devise_for :users

  resources :services do
    resources :reviews
  end

  root to: "home#index"
end
