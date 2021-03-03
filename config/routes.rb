Rails.application.routes.draw do
  get 'games/index'
  get 'games/create'
  get 'games/show'
  devise_for :users
  root 'users#index'
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
