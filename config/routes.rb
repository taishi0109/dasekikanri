Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  get 'users/index'
  # get 'games/index'
  post 'games/new' => 'games#new'
  # get 'games/show/:id' => 'games#show'
  resources :games, only: [:index, :create, :show, :new] do
    get '/bats', to: 'bats#create'
  end
end
