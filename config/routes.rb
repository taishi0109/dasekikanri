Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  get 'users/index'
  # get 'games/index'
  # get 'games/create' => 'games#create'
  # get 'games/show/:id' => 'games#show'
  resources :games, only: [:index, :create, :show] do
    get '/bats', to: 'bats#create'
  end
end
