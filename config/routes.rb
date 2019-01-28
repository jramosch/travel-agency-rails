Rails.application.routes.draw do
  root 'application#home'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users
  resources :locations
  post 'locations/:id' => 'locations#take_trip', as: :take_trip

  namespace :admin do
    resources :users, only: [:show, :index]
  end
end
