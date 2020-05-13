Rails.application.routes.draw do
  devise_for :users
  
  get "/", to: "dogs#home", as: "root"
  get "/dogs", to: "dogs#index", as: "dogs"
  get "/dogs/new", to: "dogs#new", as: "new_dogs"
  post "/dogs", to: "dogs#create"
  get "/dogs/:id", to: "dogs#show", as: "dog"

end
