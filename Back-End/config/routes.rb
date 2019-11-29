Rails.application.routes.draw do
  resources :favorites, only: [:show, :create, :index, :destroy]
  resources :users, only: [:show, :create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tokens, only: [:create]
  # get '/persist', to: 'auth#persist'
  # post '/login', to: 'auth#login'

end