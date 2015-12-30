Rails.application.routes.draw do
  root                   'users#new'

  get 'sessions/new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
end
