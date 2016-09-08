Rails.application.routes.draw do

  get 'event/index'

  get 'event/new'

  get 'event/create'

  get 'event/update'

  get 'event/delete'

  get 'event/show'

  root 'home#index'

  resources :user

  #get 'sessions/new'

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"
  get "logout" => "sessions#destroy"

  get "createuser" => "user#new"
  post "user/new" => "user#create"

  get "event/new" => "event#new"
  post "event/new" => "event#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
