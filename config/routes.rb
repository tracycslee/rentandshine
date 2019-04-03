Rails.application.routes.draw do
  # get 'listings/index'
  # get 'listings/show'
  # get 'listings/new'
  # get 'listings/edit'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :listings do
    resources :bookings, only: [:new, :create]
  end
  get '/users/dashboard', to: 'pages#dashboard'
end
