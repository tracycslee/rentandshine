Rails.application.routes.draw do
  get 'bookings/create'
  get 'bookings/show'
  # get 'listings/index'
  # get 'listings/show'
  # get 'listings/new'
  # get 'listings/edit'
  devise_for :users
  root to: 'listings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :listings do
    resources :bookings, only: [:show, :create]
  end
  get '/users/dashboard', to: 'pages#dashboard'
  get '/users/profile', to: 'profiles#show'
  get '/users/profile/edit', to: 'profiles#edit'
  patch '/users/profile', to: 'profiles#update'
  get '/tagged', to: "listings#tagged", as: :tagged
end
