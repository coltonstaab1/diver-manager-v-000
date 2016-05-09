Rails.application.routes.draw do
  root :to => "static#home"
  devise_for :users, controllers: { registrations: "registrations" }
  resources :users, only: [:show, :index]
  resources :teams
  resources :pools
  post '/sessions/create', to: 'sessions#create'
  delete "/signout", to: "sessions#destroy"
end
