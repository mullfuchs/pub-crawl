Rails.application.routes.draw do

  root 'home#index'

  # get 'user#new'

  # get 'user/create'

  # get 'user/destroy'

  # get 'user/show'

  resources :user

  #get 'sessions/new'

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"
  get "logout" => "sessions#destroy"

  get "createuser" => "user#new"
  post "user/new" => "user#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
