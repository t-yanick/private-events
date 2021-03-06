Rails.application.routes.draw do
  root to: 'events#index'
  resources :events, only: %i[index create new show]
  resources :attendances, only: %i[create destroy]
  resources :users, only: %i[new create show]
  resources :sessions, only: %i[new create destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
