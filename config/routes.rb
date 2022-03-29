Rails.application.routes.draw do
  # get 'pulses/index'
  # get 'pulses/new'
  # get 'pulses/create'
  # get 'pulses/destroy'
  devise_for :users
  # root to: 'pages#home'
  root to: 'pulses#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pulses, only: [:index, :new, :create, :destroy]
end

# CREER LES ROUTES FAVORITES
