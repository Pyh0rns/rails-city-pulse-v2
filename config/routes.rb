Rails.application.routes.draw do
  devise_for :users

  root to: 'pulses#index'

  resources :pulses, only: [:index, :new, :create, :destroy] do
    resources :favorites, only: [:create]
  end
    resources :favorites, only: [:destroy]

  get 'pages/profile'
  get 'pages/lille_city'
  get 'pages/infos'

  # resources :users, only: [:edit, :update]
end
