Rails.application.routes.draw do
  get 'home/index'
  devise_for :users

  resources :wishes
  resources :events
  resources :people

  root to: "home#index"
end
