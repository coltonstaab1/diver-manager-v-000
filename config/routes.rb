Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users" }
  root :to => "static#home"
  get '/users/:id', to: 'users#show'
end
