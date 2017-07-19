Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'calculators#index'

  resources :calculators

  # resource :users, only: %i(new create)
  post 'users' => 'users#create'
  get 'users/new' => 'users#new'

  # resource :sessions, only: %i(new create destroy)
  post 'sessions' => 'sessions#create'
  get 'sessions/new' => 'sessions#new'

  delete 'sessions' => 'sessions#destroy'
end
