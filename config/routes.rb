Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'

  resources :users
  # resources :sessions
  resources :calculators
  resources :teams, only: %i(new create index show)
  get 'teams/show' => 'teams#show'

  # resource :users, only: %i(new create)
  # post 'users' => 'users#create'
  get 'users/new' => 'users#new'
  # post 'users/update' => 'users#update'
  get 'users/show' => 'users#show'

  # resource :sessions, only: %i(new create destroy)
  post 'sessions' => 'sessions#create'
  get 'sessions/new' => 'sessions#new'
  delete 'sessions' => 'sessions#destroy'



 resources :scores
end
