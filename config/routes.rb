Rails.application.routes.draw do
  root 'application#home'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  get '/logout', to: 'sessions#destroy'

  resources :users do
    resources :trips, only: [:index, :new]
  end
  post 'users/:id/trips', to: 'trips#create'

  get 'users/:id/review', to: 'users#review', as: :review
  post 'users/:id', to: 'users#post_review', as: :post_review

  get 'locations/recommended', to: 'locations#recommended', as: :recommended
  resources :locations
  post 'locations/:id', to: 'locations#take_trip', as: :take_trip

  namespace :admin do
    resources :locations, only: [:show, :index, :edit]
    resources :users, only: [:index, :edit, :show]
  end
end
