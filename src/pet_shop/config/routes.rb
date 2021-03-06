Rails.application.routes.draw do
  devise_for :users

  get "/", to: "dogs#home", as: "root"
  get "/dogs", to: "dogs#index", as: "dogs"
  get "/dogs/new", to: "dogs#new", as: "new_dogs"
  post "/dogs", to: "dogs#create"
  get "/dogs/:id", to: "dogs#show", as: "dog"

  get "/dogs/:id/edit", to: "dogs#edit", as: "edit_dogs"
  put "dogs/:id", to: "dogs#update"
  patch "/dogs/:id", to: "dogs#update"
  delete  "dogs/:id", to: "dogs#destroy"
  get "/whoweare", to:"dogs#whoweare"
  get "/contactus", to:"dogs#contactus"
  get "aboutus", to: "dogs#aboutus"
end
