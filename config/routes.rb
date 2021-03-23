Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  get 'users/index'
  # get 'games/index'
  resources :games, only: [:index, :create, :new, :show] do
    # get '/bats', to: 'bats#create'
    resources :bats, module: 'games'
  end
end
