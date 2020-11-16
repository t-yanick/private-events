Rails.application.routes.draw do
  root to: 'events#index'
  resources :events, only: [:index, :create, :new, :show]
  #resources :attendances, only: [:create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]

  post '/attendaces/create', to: 'attendaces#create'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
