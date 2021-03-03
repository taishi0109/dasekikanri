Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  get 'users/index'
  resources :games, only: [:index, :create]
end
