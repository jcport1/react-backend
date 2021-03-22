Rails.application.routes.draw do
  post "/painting", to: "favorites#create"
  get "/painting/:id", to: "paintings#painting_details"
  get "/paintings_index", to: "paintings#paintings_index"
  delete "/paintings/:id", to: "favorites#destroy"
  resources :paintings
  post "/search", to: "paintings#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
