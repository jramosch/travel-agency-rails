Rails.application.routes.draw do
  root 'application#home'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users, except: [:index]
  resources :locations
  post 'locations/:id' => 'locations#take_trip', as: :take_trip

  namespace :admin do
    resources :locations, only: [:show, :index, :edit]
    resources :users, only: [:index, :edit]
  end
end
