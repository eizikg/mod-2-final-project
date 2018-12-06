Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :feedbacks
  post '/login', to: "sessions#create"
  get '/login', to: "sessions#new"
  post '/logout', to: "sessions#delete"
  root "users#index"
end
